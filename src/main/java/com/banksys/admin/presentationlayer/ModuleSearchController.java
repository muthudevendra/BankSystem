package com.banksys.admin.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/29/2017.
 */
@Controller
@RequestMapping("/admin/config/moduleSearch")
public class ModuleSearchController {
    @GetMapping
    public String getPage(){ return "moduleSearch"; }
}
