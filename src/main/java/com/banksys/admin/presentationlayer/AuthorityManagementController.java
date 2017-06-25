package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.AuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.admin.datalayer.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Oshada on 6/25/2017.
 *
 */

@Controller
@RequestMapping("/admin/customer/authorityManagement")
public class AuthorityManagementController {

    private final AuthorityManagementControllerManager authorityManagementControllerManager;
    private final ModuleService moduleService;

    @Autowired
    public AuthorityManagementController(AuthorityManagementControllerManager authorityManagementControllerManager,
                                         ModuleService moduleService) {
        this.authorityManagementControllerManager = authorityManagementControllerManager;
        this.moduleService = moduleService;
    }

    @GetMapping
    public String getPage(Model model) {
        model = this.getPageData(model);
        model.addAttribute("authority", new Authority());
        return "authorityManagement";
    }

    @RequestMapping(value = "/saveAuthority", method = RequestMethod.POST)
    public String saveAuthority(@ModelAttribute Authority authority, Model model) {
        this.authorityManagementControllerManager.saveAuthority(authority);
        model.addAttribute("authority", authority);
        return "authorityManagement";
    }

    private Model getPageData(Model model) {
        model.addAttribute("moduleList", this.moduleService.findAll());
        return model;
    }
}
