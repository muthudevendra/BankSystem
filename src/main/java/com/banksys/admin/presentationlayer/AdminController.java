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

    private AdminControllerManager adminControllerManager;

    @Autowired
    public AdminController(AdminControllerManager adminControllerManager) {
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
    public Integer getChartData(){
        this.adminControllerManager.findCustomerAccountCount();
        int a=2;
        return a;
    }
}
