package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.ModuleManagementControllerManager;
import com.banksys.admin.datalayer.entity.Module;
import com.banksys.common.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */

@Controller
@RequestMapping("/admin/module/moduleManagement")
public class ModuleManagementController {

    private final ModuleManagementControllerManager moduleManagementControllerManager;

    @Autowired
    public ModuleManagementController(ModuleManagementControllerManager moduleManagementControllerManager) {
        this.moduleManagementControllerManager = moduleManagementControllerManager;
    }

    @GetMapping
    public String getPage(){
        return "moduleManagement";
    }

    @RequestMapping(value = "/saveModule", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('module@moduleManagement_CREATE')")
    @ResponseBody
    public ResponseObject saveModule(@ModelAttribute Module module,
                                     HttpServletRequest request, Principal principal) {
        return this.moduleManagementControllerManager.saveModule(module, request);
    }
}
