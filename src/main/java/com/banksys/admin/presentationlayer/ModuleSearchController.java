package com.banksys.admin.presentationlayer;

import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/29/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/moduleSearch")
public class ModuleSearchController {

    private final ModuleService moduleService;

    @Autowired
    public ModuleSearchController(ModuleService moduleService){
        this.moduleService = moduleService;
    }

    @GetMapping
    public String getPage(Model model){
        model.addAttribute("modelList", this.moduleService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return "moduleSearch";
    }
}
