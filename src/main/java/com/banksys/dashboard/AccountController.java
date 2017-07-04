package com.banksys.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/4/2017.
 */
@Controller
@RequestMapping("/dashboard")
public class AccountController {

    @GetMapping("/savings/regularSavingsAccount")
    public String getRegularSavingsAccountPage() {
        return "regularSavingsAccount";
    }

    @GetMapping("/savings/childrenSavingsAccount")
    public String getChildrenSavingsAccountPage() {
        return "childrenSavingsAccount";
    }

    @GetMapping("/savings/womenSavingsAccount")
    public String getWomenSavingsAccountPage() {
        return "womenSavingsAccount";
    }

    @GetMapping("/current/generalCurrentAccount")
    public String getGeneralCurrentAccountPage() {
        return "generalCurrentAccount";
    }

    @GetMapping("/current/supremeCurrentAccount")
    public String getGeneralSupremeAccountPage() {
        return "supremeCurrentAccount";
    }

    @GetMapping("/deposits/flexibleDeposits")
    public String getFlexibleDepositsPage() {
        return "flexibleDeposits";
    }

    @GetMapping("/deposits/regularDeposits")
    public String getRegularDepositsPage() {
        return "regularDeposits";
    }

}
