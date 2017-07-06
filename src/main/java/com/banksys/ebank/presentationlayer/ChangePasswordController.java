package com.banksys.ebank.presentationlayer;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.ebank.businesslayer.manager.ChangePasswordControllerManager;
import com.banksys.util.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Muthu Devendra on 6/28/2017.
 *
 */
@Controller
@RequestMapping("ebank/profile/changePassword")
public class ChangePasswordController {

    private final ChangePasswordControllerManager changePasswordControllerManager;

    @Autowired
    public ChangePasswordController(ChangePasswordControllerManager changePasswordControllerManager) {
        this.changePasswordControllerManager = changePasswordControllerManager;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@changePassword_VIEW')")
    public String getPage(){
        return "changePassword";
    }

    @RequestMapping(value = "/changePassword", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('ebank@changePassword_CHANGE')")
    public String changePassword(@ModelAttribute User user, Model model, HttpServletRequest request){
        ResponseObject responseObject = this.changePasswordControllerManager.changePassword(user, request);
        this.getResponseData(responseObject, model);
        return "changePassword";
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("userType", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }
}
