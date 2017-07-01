package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.AuthoritySearchControllerManager;
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
@RequestMapping("/admin/config/authoritySearch")
public class AuthoritySearchController {

    private AuthoritySearchControllerManager authoritySearchControllerManager;

    @Autowired
    public AuthoritySearchController(AuthoritySearchControllerManager authoritySearchControllerManager) {
        this.authoritySearchControllerManager = authoritySearchControllerManager;
    }

    @GetMapping
    public String getPage(Model model){
        model.addAttribute("authorityList", this.authoritySearchControllerManager.findAuthories());
        return "authoritySearch";
    }
}
