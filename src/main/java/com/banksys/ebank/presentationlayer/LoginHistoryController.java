package com.banksys.ebank.presentationlayer;

import com.banksys.admin.datalayer.service.UserLoginAuditService;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    public LoginHistoryController(UserLoginAuditService userLoginAuditService) {
        this.userLoginAuditService = userLoginAuditService;
    }

    @GetMapping
    public String getPage(Model model, Principal principal){
        model.addAttribute("userLoginHistoryList", this.userLoginAuditService.findByUsername(principal.getName()));
        return "loginHistory";
    }
}
