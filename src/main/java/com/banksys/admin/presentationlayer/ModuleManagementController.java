package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.ModuleManagementControllerManager;
import com.banksys.admin.datalayer.entity.Module;
import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.common.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

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
    public String getPage(){
        return "moduleManagement";
    }

    @RequestMapping(params = "moduleId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@moduleManagement_VIEW')")
    public String loadPage(@RequestParam("moduleId") Integer modulId, Model model){
        model.addAttribute("module", this.moduleService.findOne(modulId));
        return "moduleManagement";
    }

    @RequestMapping(value = "/saveModule", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@moduleManagement_CREATE')")
    public String saveModule(@ModelAttribute Module module,
                                     HttpServletRequest request, Model model) {
        this.moduleManagementControllerManager.saveModule(module, request);
        model.addAttribute("module", module);
        return "moduleManagement";
    }
}
