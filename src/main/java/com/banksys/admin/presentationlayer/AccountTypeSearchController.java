package com.banksys.admin.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/1/2017.
 *
 */
@Controller
@RequestMapping("/admin/account/accountTypeSearch")
public class AccountTypeSearchController {
    @GetMapping
    public String getPage(){
        return "accountTypeSearch";
    }
}
