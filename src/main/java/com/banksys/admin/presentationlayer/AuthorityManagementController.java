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
    private final AuthorityManagementControllerManagermpl authorityManagementControllerManager;



    public AuthorityManagementController(ModuleService moduleService,AuthorityManagementControllerManagermpl authorityManagementControllerManagermpl) {
        this.moduleService = moduleService;
       this.authorityManagementControllerManager=authorityManagementControllerManagermpl;

    }

    @GetMapping
    public String getPage(Model model)
    {
        model = this.getPageData(model);
        model.addAttribute("authority", new Authority());
        model.addAttribute("moduleList",moduleService.findAll());
        return "authorityManagement";

    }

    @RequestMapping(value = "/saveAuthority" ,method = RequestMethod.POST)
    public String saveAuthority(@ModelAttribute Authority authority ,Model model) {
//        this.authorityManagementControllerManager.saveAuthority(authority);
//        model.addAttribute("authority",authority);
        System.out.println(">>>>>>>>>>>>>>>>>>>>>");
        System.out.println();
        return "authorityManagement";

    }


    private Model getPageData(Model model){
        model.addAttribute("genderList", Gender.values());
        return model;
    }


}
