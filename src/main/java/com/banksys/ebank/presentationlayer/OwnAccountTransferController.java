package com.banksys.ebank.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/ownAcount")
public class OwnAccountTransferController {
    @GetMapping
    public String getPage(){
        return "ownAccount";
    }
}
