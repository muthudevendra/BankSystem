package com.banksys.ebank.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lakshithar on 6/8/2017.
 *
 */
@Controller
@RequestMapping("/ebank/account/accountInquiry")
public class AccountInquiryController {
    @GetMapping
    public String getPage(){
        return "accountInquiry";
    }
}
