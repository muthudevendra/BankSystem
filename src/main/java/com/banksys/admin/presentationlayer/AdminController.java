package com.banksys.admin.presentationlayer;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @GetMapping
    @PreAuthorize("hasAuthority('Admin@Admin_VIEW')")
    public String getPage(){
        return "admin";
    }
}
