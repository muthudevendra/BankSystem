package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.AdminControllerManager;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    private CustomerAccountService customerAccountService;
    private AdminControllerManager adminControllerManager;

    @Autowired
    public AdminController(CustomerAccountService customerAccountService, AdminControllerManager adminControllerManager) {
        this.customerAccountService = customerAccountService;
        this.adminControllerManager = adminControllerManager;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    public String getPage(){
        return "admin";
    }

    @RequestMapping(value = "/chart", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    @ResponseBody
    public int getChartData(){

        this.adminControllerManager.findCustomerAccountCount();

//        List<CustomerAccount> accountsTypeCount = customerAccountService.findAllByStatusNot(0);
//        for(CustomerAccount acc : accountsTypeCount){
//            System.out.println(">>>>");
//            System.out.println(acc);
//            System.out.println(">>>><<<<<");
//        }
        int a=2;
        return a;
    }
}
