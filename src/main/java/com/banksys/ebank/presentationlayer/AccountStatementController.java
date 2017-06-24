package com.banksys.ebank.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank/account/accountStatement")
public class AccountStatementController {
    @GetMapping
    public String getPage(){
        return "accountStatement";
    }
}
