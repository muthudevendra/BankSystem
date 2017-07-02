package com.banksys.admin.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/2/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeAuthoritySearch")
public class UserTypeAuthoritySearchController {
    @GetMapping
    public String getPage(){ return "userTypeAuthoritySearch"; }
}
