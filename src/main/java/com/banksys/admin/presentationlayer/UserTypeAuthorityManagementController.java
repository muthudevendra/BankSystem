package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserTypeAuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import com.banksys.admin.datalayer.service.AuthorityService;
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
 * Created by Muthu Devendra on 6/28/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeAuthorityManagement")
public class UserTypeAuthorityManagementController {

    private final UserTypeAuthorityManagementControllerManager userTypeAuthorityManagementControllerManager;
    private final AuthorityService authorityService;
    private final UserTypeService userTypeService;

    @Autowired
    public UserTypeAuthorityManagementController(UserTypeAuthorityManagementControllerManager userTypeAuthorityManagementControllerManager,
                                                 AuthorityService authorityService,
                                                 UserTypeService userTypeService) {
        this.userTypeAuthorityManagementControllerManager = userTypeAuthorityManagementControllerManager;
        this.authorityService = authorityService;
        this.userTypeService = userTypeService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@userTypeAuthorityManagement_VIEW')")
    public String getPage(Model model) {
        model = this.getPageData(model);
        model.addAttribute("userTypeAuthority", new UserTypeAuthority());
        return "userTypeAuthorityManagement";
    }

    @RequestMapping(value = "/saveUserTypeAuthority", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@userTypeAuthorityManagement_CREATE')")
    public String saveUserTypeAuthority(UserTypeAuthority userTypeAuthority, Model model) {
        ResponseObject responseObject = this.userTypeAuthorityManagementControllerManager.saveUserTypeAuthority(userTypeAuthority);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "userTypeAuthorityManagement";
    }

    @RequestMapping(value = "/updateUserTypeAuthority", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@userTypeAuthorityManagement_UPDATE')")
    public String updateUserTypeAuthority(UserTypeAuthority userTypeAuthority, Model model) {
        ResponseObject responseObject = this.userTypeAuthorityManagementControllerManager.updateUserTypeAuthority(userTypeAuthority);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "userTypeAuthorityManagement";
    }

    private Model getPageData(Model model) {
        model.addAttribute("statusList", MasterDataStatus.values());
        model.addAttribute("authorityList", this.authorityService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("userTypeList", this.userTypeService.findAll());
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("userTypeAuthority", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }
}
