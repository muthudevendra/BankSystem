package com.banksys.admin.presentationlayer;

import com.banksys.ebank.datalayer.entity.Module;
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
public class ModuleController {
    @GetMapping
    public String getPage(){
        return "moduleManagement";
    }

    @RequestMapping(value = "/saveModule", method = RequestMethod.POST)
    @PreAuthorize("hasRole('module@moduleManagement_CREATE')")
    @ResponseBody
    public Module saveGeneralInformation(@ModelAttribute Module module,
                                         HttpServletRequest request, Principal principal) {
        return module;
    }
}
