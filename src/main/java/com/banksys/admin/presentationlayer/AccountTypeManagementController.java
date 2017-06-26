package com.banksys.admin.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */

@Controller
@RequestMapping("/admin/account/accountTypeManagement")
public class AccountTypeManagementController {
    @GetMapping
    public String getPage(){
        return "accountTypeManagement";
    }
}
