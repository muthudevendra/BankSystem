package com.banksys.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by Lakshitha on 01-Jun-17.
 *
 */
@Controller
@RequestMapping("/")
public class IndexController {
    @RequestMapping("/")
    public String test(){
        return "test";
    }
}