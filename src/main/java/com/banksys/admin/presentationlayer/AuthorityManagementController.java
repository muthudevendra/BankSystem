package com.banksys.admin.presentationlayer;

import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.util.enums.Gender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Oshada on 6/25/2017.
 */

@Controller
@RequestMapping("/admin/customer/authorityManagement")
public class AuthorityManagementController {

    private final ModuleService moduleService;

    public AuthorityManagementController(ModuleService moduleService) {
        this.moduleService = moduleService;
    }

    @GetMapping
    public String getPage(Model model)
    {
        model = this.getPageData(model);
        model.addAttribute("authority", new Authority());
        System.out.println("size"+moduleService.count());
        return "authorityManagement";

    }


    private Model getPageData(Model model){
        model.addAttribute("genderList", Gender.values());
        return model;
    }


}
