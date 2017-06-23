package com.banksys.ebank.presentationlayer;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lakshitha on 08-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank")
public class EBankController {
    @GetMapping
    @PreAuthorize("hasAuthority('ebank@ebank_VIEW')")
    public String getPage(){
        return "ebank";
    }
}
