package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.AdminControllerManager;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.ebank.datalayer.service.OwnAccountTransferService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    private AdminControllerManager adminControllerManager;
    private CustomerAccountService customerAccountService;
    private CustomerService customerService;
    private OwnAccountTransferService ownAccountTransferService;

    @Autowired
    public AdminController(AdminControllerManager adminControllerManager, CustomerAccountService customerAccountService, CustomerService customerService, OwnAccountTransferService ownAccountTransferService) {
        this.adminControllerManager = adminControllerManager;
        this.customerAccountService = customerAccountService;
        this.customerService = customerService;
        this.ownAccountTransferService = ownAccountTransferService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    public String getPage(){
        return "admin";
    }

    @RequestMapping(value = "/chart", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    @ResponseBody
    public String getChartData(){
        return  this.adminControllerManager.findCustomerAccountCount();
    }

    @RequestMapping(value = "/transferChart", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    @ResponseBody
    public String getTransferChartData(){
        String transferGroup = this.adminControllerManager.findDailyTransferCountChart();
        return  transferGroup;
    }

    @RequestMapping(value = "/customerAccountCount", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    @ResponseBody
    public Long getCustomerAccountCount(){
        return this.customerAccountService.countByStatusNot(MasterDataStatus.DELETED.getStatusSeq());
    }

    @RequestMapping(value = "/customerCount", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    @ResponseBody
    public Long getCustomerCount(){
        return this.customerService.countCustomersByStatusNot(MasterDataStatus.DELETED.getStatusSeq());
    }

    @RequestMapping(value = "/transferCount", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    @ResponseBody
    public Long getAccountTransfers(){
        return this.adminControllerManager.findDailyTransferCount();
    }
}
