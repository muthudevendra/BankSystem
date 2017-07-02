package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.ModuleManagementControllerManager;
import com.banksys.admin.datalayer.entity.Module;
import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */

@Controller
@RequestMapping("/admin/config/moduleManagement")
public class ModuleManagementController {

    private final ModuleManagementControllerManager moduleManagementControllerManager;
    private final ModuleService moduleService;

    @Autowired
    public ModuleManagementController(ModuleManagementControllerManager moduleManagementControllerManager,ModuleService moduleService) {
        this.moduleManagementControllerManager = moduleManagementControllerManager;
        this.moduleService = moduleService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@moduleManagement_VIEW')")
    public String getPage(Model model){
        this.getPageData(model);
        return "moduleManagement";
    }

    @RequestMapping(params = "moduleId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@moduleManagement_VIEW')")
    public String loadPage(@RequestParam("moduleId") Integer moduleId, Model model){
        model.addAttribute("module", this.moduleService.findOne(moduleId));
        this.getPageData(model);
        return "moduleManagement";
    }

    @RequestMapping(value = "/saveModule", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@moduleManagement_CREATE')")
    public String saveModule(@ModelAttribute Module module,
                             HttpServletRequest request, Model model) {
        ResponseObject responseObject = this.moduleManagementControllerManager.saveModule(module);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "moduleManagement";
    }

    @RequestMapping(value = "/updateModule", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@moduleManagement_UPDATE')")
    public String updateModule(@ModelAttribute Module module,
                             HttpServletRequest request, Model model) {
        ResponseObject responseObject = this.moduleManagementControllerManager.updateModule(module);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "moduleManagement";
    }

    private Model getPageData(Model model){
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("module", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }
}
