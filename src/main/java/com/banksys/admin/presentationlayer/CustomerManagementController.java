package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerManagementControllerManager;
import com.banksys.ebank.datalayer.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Controller
@RequestMapping("/admin/customer/customerManagement")
public class CustomerManagementController {

    private final CustomerManagementControllerManager customerManagementControllerManager;

    @Autowired
    public CustomerManagementController(CustomerManagementControllerManager customerManagementControllerManager) {
        this.customerManagementControllerManager = customerManagementControllerManager;
    }

    @GetMapping
    public String getPage(){
        return "customerManagement";
    }

    public String saveCustomer(Customer customer){
        this.customerManagementControllerManager.saveCustomer(customer);
        return "customerManagement";
    }
}
