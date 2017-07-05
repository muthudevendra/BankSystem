package com.banksys.ebank.presentationlayer;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.service.UserLoginAuditService;
import com.banksys.admin.datalayer.service.UserLoginFailureAuditService;
import com.banksys.admin.datalayer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

/**
 * Created by Muthu Devendra on 6/28/2017.
 *
 */
@Controller
@RequestMapping("/ebank/profile/loginHistory")
public class LoginHistoryController {

    private final UserLoginAuditService userLoginAuditService;
    private final UserLoginFailureAuditService userLoginFailureAuditService;
    private final UserService userService;

    @Autowired
    public LoginHistoryController(UserLoginAuditService userLoginAuditService,
                                  UserLoginFailureAuditService userLoginFailureAuditService,
                                  UserService userService) {
        this.userLoginAuditService = userLoginAuditService;
        this.userLoginFailureAuditService = userLoginFailureAuditService;
        this.userService = userService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@loginHistory_VIEW')")
    public String getPage(Model model, Principal principal){
        User user = this.userService.findByUsername(principal.getName());
        model.addAttribute("userLoginHistoryList", this.userLoginAuditService.findByUsername(user.getUsername()));
        model.addAttribute("lastFailedLogin", this.userLoginFailureAuditService.findByUserId(user.getUserId()));
        return "loginHistory";
    }
}
