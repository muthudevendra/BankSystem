package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerSearchControllerManager;
import com.banksys.admin.datalayer.entity.auxilary.CustomerAux;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        model.addAttribute("customerAux", new CustomerAux());
        return "customerSearch";
    }

    @RequestMapping(value = "/searchCustomers", method = RequestMethod.POST)
    public String findCustomers(@ModelAttribute CustomerAux customerAux, Model model){
        model.addAttribute("customerList", this.customerSearchControllerManager.findCustomers(customerAux));
        return "customerSearch";
    }
}
