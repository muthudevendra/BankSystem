package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserTypeAuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import com.banksys.admin.datalayer.service.AuthorityService;
import com.banksys.admin.datalayer.service.UserTypeAuthorityService;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.enums.MasterDataStatus;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Muthu Devendra on 6/28/2017.
 */
@Controller
@RequestMapping("/admin/config/userTypeAuthorityManagement")
public class UserTypeAuthorityManagementController {
    private final UserTypeAuthorityManagementControllerManager userTypeAuthorityManagementControllerManager;
    private final UserTypeAuthorityService userTypeAuthorityService;
    private final AuthorityService authorityService;
    private final UserTypeService userTypeService;

    @Autowired
    public UserTypeAuthorityManagementController(UserTypeAuthorityManagementControllerManager userTypeAuthorityManagementControllerManager, UserTypeAuthorityService userTypeAuthorityService, AuthorityService authorityService, UserTypeService userTypeService) {
        this.userTypeAuthorityManagementControllerManager = userTypeAuthorityManagementControllerManager;
        this.userTypeAuthorityService = userTypeAuthorityService;
        this.authorityService = authorityService;
        this.userTypeService = userTypeService;
    }

    @GetMapping
    public String getPage(Model model) {
        model = this.getPageData(model);
        model.addAttribute("userTypeAuthority", new UserTypeAuthority());
        return "userTypeAuthorityManagement";
    }


    @RequestMapping(value = "/saveUserTypeAuthority", method = RequestMethod.POST)
    public String saveUserTypeAuthority(UserTypeAuthority userTypeAuthority, Model model) {
        this.userTypeAuthorityManagementControllerManager.saveUserTypeAuthority(userTypeAuthority);
        model = this.getPageData(model);
        model.addAttribute("userTypeAuthority", userTypeAuthority);
        return "userTypeAuthorityManagement";
    }

    @RequestMapping(value = "/updateUserTypeAuthority", method = RequestMethod.POST)
    public String updateUserTypeAuthority(UserTypeAuthority userTypeAuthority, Model model) {
        this.userTypeAuthorityManagementControllerManager.updateUserTypeAuthority(userTypeAuthority);
        model = this.getPageData(model);
        model.addAttribute("userTypeAuthority", userTypeAuthority);
        return "userTypeAuthorityManagement";


    }

    private Model getPageData(Model model) {
        model.addAttribute("statusList", MasterDataStatus.values());
        model.addAttribute("authorityList", this.authorityService.findAll());
        model.addAttribute("userTypeList", this.userTypeService.findAll());
        return model;
    }

}