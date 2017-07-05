package com.banksys.dashboard;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by Lakshitha on 01-Jun-17.
 *
 */
@Controller
@RequestMapping("/")
public class IndexController {
    @GetMapping
    public String getPage(){
        return "dashboard";
    }

    @GetMapping("dashboard/home")
    public String getHomePage(){
        return "home";
    }
}
