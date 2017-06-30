package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerAccountManagementControllerManager;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.AccountTypeService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.enums.InterestMethod;
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
 * Created by Muthu Devendra on 6/26/2017.
 *
 */

@Controller
@RequestMapping("/admin/account/customerAccountManagement")
public class CustomerAccountManagementController {

    private final CustomerAccountManagementControllerManager customerAccountManagementControllerManager;
    private final CustomerAccountService customerAccountService;
    private final AccountTypeService accountTypeService;
    private final CustomerService customerService;

    @Autowired
    public CustomerAccountManagementController(CustomerAccountManagementControllerManager customerAccountManagementControllerManager,
                                               CustomerAccountService customerAccountService,
                                               AccountTypeService accountTypeService, CustomerService customerService) {
        this.customerAccountManagementControllerManager = customerAccountManagementControllerManager;
        this.customerAccountService = customerAccountService;
        this.accountTypeService = accountTypeService;
        this.customerService = customerService;
    }

    @GetMapping
    public String getPage(Model model) {
        model = this.getPageData(model);
        model.addAttribute("customerAccount", new CustomerAccount());
        return "customerAccountManagement";
    }

    @RequestMapping(params = "customerAccountId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@customerAccountManagement_VIEW')")
    public String loadPage(@RequestParam("customerAccountId") Integer customerAccountId, Model model) {
        model = this.getPageData(model);
        model.addAttribute("customerAccount", this.customerAccountService.findOne(customerAccountId));
        return "customerAccountManagement";
    }

    @RequestMapping(value = "/saveCustomerAccount", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerAccountManagement_CREATE')")
    public String saveCustomerAccount(@ModelAttribute CustomerAccount customerAccount, Model model) {
        this.customerAccountManagementControllerManager.saveCustomerAccount(customerAccount);
        model = getPageData(model);
        model.addAttribute("customerAccount", customerAccount);
        return "customerAccountManagement";
    }

    @RequestMapping(value = "/updateCustomerAccount", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerAccountManagement_UPDATE')")
    public String updateCustomerAccount(@ModelAttribute CustomerAccount customerAccount, Model model) {
        this.customerAccountManagementControllerManager.updateCustomerAccount(customerAccount);
        model = getPageData(model);
        model.addAttribute("customerAccount", customerAccount);
        return "customerAccountManagement";
    }

    private Model getPageData(Model model) {
        model.addAttribute("statusList", MasterDataStatus.values());
        model.addAttribute("accountTypeList", this.accountTypeService.findAll());
        model.addAttribute("interestMethodList", InterestMethod.values());
        model.addAttribute("customerList", customerService.findAll());
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}