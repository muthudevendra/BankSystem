package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerManagementControllerManager;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.Gender;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;

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
    @PreAuthorize("hasAuthority('admin@customerManagement_VIEW')")
    public String loadPage(@RequestParam("customerId") Integer customerId, Model model){
        model = this.getPageData(model);
        model.addAttribute("customer", this.customerService.findOne(customerId));
        return "customerManagement";
    }

    @RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerManagement_CREATE')")
    public String saveCustomer(@ModelAttribute Customer customer, Model model){
        ResponseObject responseObject = this.customerManagementControllerManager.saveCustomer(customer);
        this.getPageData(model);
        this.getResponseData(responseObject, model);
        return "customerManagement";
    }

    @RequestMapping(value = "/updateCustomer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerManagement_UPDATE')")
    public String updateCustomer(@ModelAttribute Customer customer, Model model){
        ResponseObject responseObject = this.customerManagementControllerManager.updateCustomer(customer);
        model = getPageData(model);
        this.getResponseData(responseObject, model);
        return "customerManagement";
    }

    private Model getPageData(Model model){
        model.addAttribute("genderList", Gender.values());
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("customer", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
