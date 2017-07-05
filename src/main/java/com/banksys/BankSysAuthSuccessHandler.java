package com.banksys;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.entity.UserLoginAudit;
import com.banksys.admin.datalayer.entity.UserLoginFailureAudit;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserLoginAuditService;
import com.banksys.admin.datalayer.service.UserLoginFailureAuditService;
import com.banksys.admin.datalayer.service.UserService;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.enums.AccountLockStatus;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * Created by lakshithar on 6/19/2017.
 *
 */
@Service
public class BankSysAuthSuccessHandler implements AuthenticationSuccessHandler {
    private final Integer SESSION_TIMEOUT_IN_SECONDS = 60 * 30 * 10;
    private final UserLoginAuditService userLoginAuditService;
    private final UserService userService;
    private final UserTypeService userTypeService;
    private final UserLoginFailureAuditService userLoginFailureAuditService;

    @Autowired
    public BankSysAuthSuccessHandler(UserLoginAuditService userLoginAuditService,
                                     UserService userService,
                                     UserTypeService userTypeService,
                                     UserLoginFailureAuditService userLoginFailureAuditService) {
        this.userLoginAuditService = userLoginAuditService;
        this.userService = userService;
        this.userTypeService = userTypeService;
        this.userLoginFailureAuditService = userLoginFailureAuditService;
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        UserLoginAudit userLoginAudit = new UserLoginAudit();
        userLoginAudit.setUsername(authentication.getName());
        userLoginAudit.setLoginDate(new Date());
        userLoginAudit.setRemoteAddress(request.getRemoteAddr());
        this.userLoginAuditService.save(userLoginAudit);
        request.getSession().setMaxInactiveInterval(SESSION_TIMEOUT_IN_SECONDS);

        User user = this.userService.findByUsername(authentication.getName());
        request.getSession().setAttribute("userId", user.getUserId());

        Boolean isLoggable = false;
        UserLoginFailureAudit userLoginFailureAudit = this.userLoginFailureAuditService.findByUserId(user.getUserId());
        if(userLoginFailureAudit == null){
            isLoggable = true;
        }
        else if(userLoginFailureAudit.getLockedStatus().equals(AccountLockStatus.UNLOCKED.getAccountLockStatusSeq())){
            isLoggable = true;
        }
        else if(userLoginFailureAudit.getUnlockedAt().before(new Date())){
            isLoggable = true;
            userLoginFailureAudit.setNumberOfAttempts(0);
            userLoginFailureAudit.setLockedStatus(AccountLockStatus.UNLOCKED.getAccountLockStatusSeq());
            userLoginFailureAudit.setUnlockedAt(null);
            this.userLoginFailureAuditService.save(userLoginFailureAudit);
        }
        else{
            isLoggable = false;
        }

        if(isLoggable) {
            UserType userType = this.userTypeService.findByUserTypeAndStatusNot("Admin", MasterDataStatus.DELETED.getStatusSeq());
            if (userType != null && user.getUserTypeId().equals(userType.getUserTypeId())) {
                response.sendRedirect("/admin");
            } else {
                response.sendRedirect("/ebank");
            }
        }
        else{
            throw new AccessDeniedException("Wait");
        }
    }
}
