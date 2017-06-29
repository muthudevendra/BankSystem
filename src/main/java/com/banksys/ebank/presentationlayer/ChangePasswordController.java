package com.banksys.ebank.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/28/2017.
 */
@Controller
@RequestMapping("ebank/profile/changePassword")
public class ChangePasswordController {
    @GetMapping
    public String getPage(){ return "changePassword"; }
}
