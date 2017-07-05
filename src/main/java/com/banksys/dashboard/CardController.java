package com.banksys.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/4/2017.
 *
 */
@Controller
@RequestMapping("/dashboard")
public class CardController {
    @GetMapping("/cards/creditCard")
    public String getCreditCardPage() {
        return "creditCard";
    }

    @GetMapping("/cards/debitCard")
    public String getDebitCardPage() {
        return "debitCard";
    }

}
