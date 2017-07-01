package com.banksys.admin.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/1/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeSearch")
public class UserTypeSearchController {
    @GetMapping
    public String getPage(){ return "userTypeSearch";}
    }

