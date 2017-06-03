package com.banksys;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.web.bind.annotation.RequestMethod.GET;


/**
 * Created by Lakshitha on 01-Jun-17.
 */
@Controller
@RequestMapping("/")
public class IndexController {
    @RequestMapping("/")
    public String test(){
        return "test";
    }
}
