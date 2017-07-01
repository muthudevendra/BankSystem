package com.banksys.ebank.presentationlayer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/1/2017.
 */
@Controller
@RequestMapping("/ebank/transfer/thirdPartyTransferConfirmation")
public class ThirdPartyTransferConfirmationController {
    @GetMapping
    public String getPage(){
        return "thirdPartyTransferConfirmation";
    }
}
