package com.banksys;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.entity.UserLoginAudit;
import com.banksys.admin.datalayer.service.UserLoginAuditService;
import com.banksys.admin.datalayer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    public BankSysAuthSuccessHandler(UserLoginAuditService userLoginAuditService, UserService userService) {
        this.userLoginAuditService = userLoginAuditService;
        this.userService = userService;
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
        response.sendRedirect("/ebank");
    }
}
