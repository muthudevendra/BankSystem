package com.banksys.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/4/2017.
 */
@Controller
@RequestMapping("/dashboard")
public class InsuranceController {
    @GetMapping("insurance/lifeInsurance")
    public String getLifeInsurancePage() {
        return "lifeInsurance";
    }

    @GetMapping("insurance/carInsurance")
    public String getCarInsurancePage() {
        return "carInsurance";
    }

    @GetMapping("insurance/buildingInsurance")
    public String getBuildingInsurancePage() {
        return "buildingInsurance";
    }
}
