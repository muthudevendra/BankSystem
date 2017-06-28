package com.banksys.admin.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Oshada on 6/27/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeManagement")
public class UserTypeManagementController {
    @GetMapping
    public String getPage() {
        return "userTypeManagement";
    }
}
