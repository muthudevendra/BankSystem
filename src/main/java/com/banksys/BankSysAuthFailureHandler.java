package com.banksys;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.entity.UserLoginFailureAudit;
import com.banksys.admin.datalayer.service.UserLoginFailureAuditService;
import com.banksys.admin.datalayer.service.UserService;
import com.banksys.util.enums.AccountLockStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Lakshitha on 05-Jul-17.
 *
 */
@Service
public class BankSysAuthFailureHandler implements AuthenticationFailureHandler {

    private final UserLoginFailureAuditService userLoginFailureAuditService;
    private final UserService userService;
    private final static int MAX_ATTEMPTS = 4;

    @Autowired
    public BankSysAuthFailureHandler(UserLoginFailureAuditService userLoginFailureAuditService,
                                     UserService userService) {
        this.userLoginFailureAuditService = userLoginFailureAuditService;
        this.userService = userService;
    }

    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        String username = httpServletRequest.getParameter("username");
        String responseUrl = "/login";
        if (username != null) {
            User user = this.userService.findByUsername(username);
            if (user != null) {
                Integer attempts;
                UserLoginFailureAudit dbUserLoginFailureAudit = this.userLoginFailureAuditService.findByUserId(user.getUserId());
                if (dbUserLoginFailureAudit != null) {
                    attempts = dbUserLoginFailureAudit.getNumberOfAttempts();
                    dbUserLoginFailureAudit.setAttemptedDate(new Date());
                    dbUserLoginFailureAudit.setNumberOfAttempts(++attempts);
                    if (attempts >= MAX_ATTEMPTS) {
                        Calendar now = Calendar.getInstance();
                        now.add(Calendar.MINUTE, 10);
                        dbUserLoginFailureAudit.setLockedStatus(AccountLockStatus.LOCKED.getAccountLockStatusSeq());
                        dbUserLoginFailureAudit.setUnlockedAt(now.getTime());
                        this.userLoginFailureAuditService.save(dbUserLoginFailureAudit);
                        responseUrl = "/accountLocked";
                    }
                    else{
                        responseUrl = "/loginFailure?attempts="+ (MAX_ATTEMPTS - attempts);
                    }
                    this.userLoginFailureAuditService.save(dbUserLoginFailureAudit);
                } else {
                    attempts = 1;
                    dbUserLoginFailureAudit = new UserLoginFailureAudit();
                    dbUserLoginFailureAudit.setLockedStatus(AccountLockStatus.UNLOCKED.getAccountLockStatusSeq());
                    dbUserLoginFailureAudit.setNumberOfAttempts(attempts);
                    dbUserLoginFailureAudit.setAttemptedDate(new Date());
                    dbUserLoginFailureAudit.setUserId(user.getUserId());
                    this.userLoginFailureAuditService.save(dbUserLoginFailureAudit);
                    responseUrl = "/loginFailure?attempts="+(MAX_ATTEMPTS - attempts);
                }
            }
        }
        httpServletResponse.sendRedirect(responseUrl);
    }
}
