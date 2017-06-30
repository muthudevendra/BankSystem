package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.ModuleSearchControllerManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/29/2017.
 */
@Controller
@RequestMapping("/admin/config/moduleSearch")
public class ModuleSearchController {

    private final ModuleSearchControllerManager moduleSearchControllerManager;

    @Autowired
    public ModuleSearchController(ModuleSearchControllerManager moduleSearchControllerManager){
        this.moduleSearchControllerManager = moduleSearchControllerManager;
    }

    @GetMapping
    public String getPage(Model model){
        model.addAttribute("modelList", this.moduleSearchControllerManager.findModules());
        return "moduleSearch";
    }
}
