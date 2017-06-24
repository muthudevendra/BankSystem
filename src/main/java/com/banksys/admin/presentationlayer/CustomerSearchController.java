package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerSearchControllerManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Controller
@RequestMapping("/admin/customer/customerSearch")
public class CustomerSearchController {

    private final CustomerSearchControllerManager customerSearchControllerManager;

    @Autowired
    public CustomerSearchController(CustomerSearchControllerManager customerSearchControllerManager) {
        this.customerSearchControllerManager = customerSearchControllerManager;
    }

    @GetMapping
    public String getPage(Model model){
        return "customerSearch";
    }

    @RequestMapping(value = "/searchCustomers", method = RequestMethod.GET)
    public String findCustomers(Model modle){
        modle.addAttribute("customerList", this.customerSearchControllerManager.findCustomers());
        return "customerSearch";
    }
}
