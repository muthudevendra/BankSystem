package com.banksys;

import com.banksys.admin.datalayer.entity.UserLoginAudit;
import com.banksys.admin.datalayer.service.UserLoginAuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
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
public class BankSysAuthLogoutHandler implements LogoutSuccessHandler {

    private final UserLoginAuditService userLoginAuditService;

    @Autowired
    public BankSysAuthLogoutHandler(UserLoginAuditService userLoginAuditService) {
        this.userLoginAuditService = userLoginAuditService;
    }

    @Override
    public void onLogoutSuccess(HttpServletRequest httpServletRequest, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        try {
            UserLoginAudit userLoginAudit = this.userLoginAuditService.lastLogInAudit(authentication.getName());
            userLoginAudit.setLogoutDate(new Date());
            this.userLoginAuditService.save(userLoginAudit);
        } catch (NullPointerException e) {
            System.out.println("authentication is null");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/login");
    }
}
