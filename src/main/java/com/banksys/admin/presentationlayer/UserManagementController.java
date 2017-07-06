package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Muthu Devendra on 7/1/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userManagement")
public class UserManagementController {

    private final UserManagementManager userManagementManager;
    private final UserTypeService userTypeService;


    @Autowired
    public UserManagementController(UserManagementManager userManagementManager, UserTypeService userTypeService) {
        this.userManagementManager = userManagementManager;
        this.userTypeService = userTypeService;

    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@userManagement_VIEW')")
    public String getPage(Model model) {
        this.getPageData(model);
        model.addAttribute("user", new User());
        return "userManagement";
    }

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@userManagement_CREATE')")
    public String saveUser(User user, Model model) {
        ResponseObject responseObject = this.userManagementManager.saveUser(user);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        model.addAttribute("user", user);
        return "userManagement";
    }

    @PreAuthorize("hasAuthority('admin@userManagement_UPDATE')")
    @RequestMapping(value = "/updateUser" ,method = RequestMethod.POST)
    public String updateUser(User user,Model model){
        ResponseObject responseObject=this.userManagementManager.updateUser(user);
        this.getPageData(model);
        this.getResponseData(responseObject,model);
        return "userManagement";
    }

    private Model getPageData(Model model) {
        model.addAttribute("userTypeList", userTypeService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("statusList",MasterDataStatus.values());
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("user", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }
}
