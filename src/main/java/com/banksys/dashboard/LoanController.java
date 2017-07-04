package com.banksys.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/4/2017.
 */
@Controller
@RequestMapping("/dashboard")
public class LoanController {
    @GetMapping("loans/educationalLoans")
    public String getEducationalLoanPage() {
        return "educationalLoans";
    }

    @GetMapping("loans/housingLoans")
    public String getHousinglLoanPage() {
        return "housingLoans";
    }

    @GetMapping("loans/personalLoans")
    public String getPersonalLoanPage() {
        return "personalLoans";
    }
}
