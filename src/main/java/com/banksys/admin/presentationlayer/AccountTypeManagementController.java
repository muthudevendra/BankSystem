package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.AccountTypeManagementControllerManager;
import com.banksys.ebank.datalayer.entity.AccountType;
import com.banksys.ebank.datalayer.service.AccountTypeService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */

@Controller
@RequestMapping("/admin/account/accountTypeManagement")
public class AccountTypeManagementController {

    private final AccountTypeManagementControllerManager accountTypeManagementControllerManager;
    private final AccountTypeService accountTypeService;

    @Autowired
    public AccountTypeManagementController(AccountTypeManagementControllerManager accountTypeManagementControllerManager,
                                           AccountTypeService accountTypeService) {
        this.accountTypeManagementControllerManager = accountTypeManagementControllerManager;
        this.accountTypeService = accountTypeService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@accountTypeManagement_VIEW')")
    public String getPage(Model model){
        model.addAttribute("accountType", new AccountType());
        return "accountTypeManagement";
    }

    @RequestMapping(params = "accountTypeId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@accountTypeManagement_VIEW')")
    public String loadPage(@RequestParam("accountTypeId") Integer accountTypeId, Model model){
        model = this.getPageData(model);
        model.addAttribute("accountType", this.accountTypeService.findOne(accountTypeId));
        return "accountTypeManagement";
    }

    @RequestMapping(value = "/saveAccountType", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@accountTypeManagement_CREATE')")
    public String saveAccountType(@ModelAttribute AccountType accountType, Model model){
        this.accountTypeManagementControllerManager.saveAccountType(accountType);
        model = getPageData(model);
        model.addAttribute("accountType", accountType);
        return "accountTypeManagement";
    }

    @RequestMapping(value = "/updateAccountType", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@accountTypeManagement_UPDATE')")
    public String updateAccountType(@ModelAttribute AccountType accountType, Model model){
        this.accountTypeManagementControllerManager.updateAccountType(accountType);
        model = getPageData(model);
        model.addAttribute("accountType", accountType);
        return "accountTypeManagement";
    }

    private Model getPageData(Model model){
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }
}
