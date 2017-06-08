package com.banksys.ebank.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lakshitha on 08-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank")
public class IndexController {
    @RequestMapping("/")
    public String test(){
        return "ebank";
    }
}
