package com.banksys.ebank.presentationlayer;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lakshitha on 08-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank/home")
public class HomeController {
    @RequestMapping("/")
    public String test(){
        return "ebank";
    }
}
