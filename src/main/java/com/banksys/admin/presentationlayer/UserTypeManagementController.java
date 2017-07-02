package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserTypeManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Oshada on 6/27/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeManagement")
public class UserTypeManagementController {

    private final UserTypeManagementControllerManager userTypeManagementControllerManager;
    private final UserTypeService userTypeService;

    @Autowired
    public UserTypeManagementController(UserTypeManagementControllerManager userTypeManagementControllerManager,
                                        UserTypeService userTypeService) {
        this.userTypeManagementControllerManager = userTypeManagementControllerManager;
        this.userTypeService = userTypeService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@userTypeManagement_VIEW')")
    public String getPage(Model model) {
        model = this.getPageData(model);
        model.addAttribute("userType", new UserType());
        return "userTypeManagement";
    }

    @RequestMapping(params = "userTypeId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@userTypeManagement_VIEW')")
    public String loadPage(@RequestParam("userTypeId") Integer userTypeId, Model model){
        model.addAttribute("userType", this.userTypeService.findOne(userTypeId));
        this.getPageData(model);
        return "userTypeManagement";
    }

    @RequestMapping(value = "/saveUserTypeManagement", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@userTypeManagement_CREATE')")
    public String saveUserTypeManagement(@ModelAttribute UserType userType, Model model) {
        ResponseObject responseObject = this.userTypeManagementControllerManager.saveUserType(userType);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "userTypeManagement";
    }

    @RequestMapping(value = "/updateUserTypeManagement", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@userTypeManagement_UPDATE')")
    public String updateUserTypeManagement(@ModelAttribute UserType userType, Model model) {
        ResponseObject responseObject = this.userTypeManagementControllerManager.updateUserType(userType);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "userTypeManagement";
    }

    private Model getPageData(Model model) {
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("userType", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }
}
