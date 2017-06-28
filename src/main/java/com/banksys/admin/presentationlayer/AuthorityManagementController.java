package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.AuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.admin.datalayer.service.AuthorityService;
import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Oshada on 6/25/2017.
 *
 */

@Controller
@RequestMapping("/admin/customer/authorityManagement")
public class AuthorityManagementController {

    private final AuthorityManagementControllerManager authorityManagementControllerManager;
    private final ModuleService moduleService;
    private final AuthorityService authorityService;

    @Autowired
    public AuthorityManagementController(AuthorityManagementControllerManager authorityManagementControllerManager,
                                         ModuleService moduleService, AuthorityService authorityService) {
        this.authorityManagementControllerManager = authorityManagementControllerManager;
        this.moduleService = moduleService;
        this.authorityService = authorityService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@authorityManagement_VIEW')")
    public String getPage(Model model) {
        model = this.getPageData(model);
        model.addAttribute("authority", new Authority());
        return "authorityManagement";
    }

    @RequestMapping(params = "authorityId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@authorityManagement_VIEW')")
    public String loadPage(@RequestParam("authorityId") Integer authorityId, Model model){
        model = this.getPageData(model);
        model.addAttribute("authority", this.authorityService.findOne(authorityId));
        return "authorityManagement";
    }

    @RequestMapping(value = "/saveAuthority", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@authorityManagement_CREATE')")
    public String saveAuthority(@ModelAttribute Authority authority, Model model) {
        this.authorityManagementControllerManager.saveAuthority(authority);
        model = this.getPageData(model);
        model.addAttribute("authority", authority);
        return "authorityManagement";
    }

    @RequestMapping(value = "/updateAuthority", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@authorityManagement_UPDATE')")
    public String updateAuthority(@ModelAttribute Authority authority, Model model) {
        this.authorityManagementControllerManager.updateAuthority(authority);
        model = this.getPageData(model);
        model.addAttribute("authority", authority);
        return "authorityManagement";
    }

    private Model getPageData(Model model) {
        model.addAttribute("moduleList", this.moduleService.findAll());
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }
}
