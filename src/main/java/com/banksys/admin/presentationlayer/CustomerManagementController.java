package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerManagementControllerManager;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.enums.Gender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Controller
@RequestMapping("/admin/customer/customerManagement")
public class CustomerManagementController {

    private final CustomerManagementControllerManager customerManagementControllerManager;
    private final CustomerService customerService;

    @Autowired
    public CustomerManagementController(CustomerManagementControllerManager customerManagementControllerManager,
                                        CustomerService customerService) {
        this.customerManagementControllerManager = customerManagementControllerManager;
        this.customerService = customerService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@customerManagement_VIEW')")
    public String getPage(Model model){
        model = this.getPageData(model);
        model.addAttribute("customer", new Customer());
        return "customerManagement";
    }

    @RequestMapping(params = "customerId", method = RequestMethod.GET)
    public String loadPage(@RequestParam("customerId") Integer customerId, Model model){
        model = this.getPageData(model);
        model.addAttribute("customer", this.customerService.findOne(customerId));
        return "customerManagement";
    }

    @RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerManagement_CREATE')")
    public String saveCustomer(@ModelAttribute Customer customer, Model model){
        this.customerManagementControllerManager.saveCustomer(customer);
        model.addAttribute("customer", customer);
        return "customerManagement";
    }

    @RequestMapping(value = "/updateCustomer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerManagement_CREATE')")
    public String updateCustomer(@ModelAttribute Customer customer, Model model){
        this.customerManagementControllerManager.updateCustomer(customer);
        model.addAttribute("customer", customer);
        return "customerManagement";
    }

    @RequestMapping(value = "/deleteCustomer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerManagement_DELETE')")
    public String deleteCustomer(@RequestParam("customerId") Integer customerId, Model model){
        this.customerManagementControllerManager.deleteCustomer(customerId);
        model.addAttribute("customer", new Customer());
        return "customerManagement";
    }

    private Model getPageData(Model model){
        model.addAttribute("genderList", Gender.values());
        return model;
    }
}
