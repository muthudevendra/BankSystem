package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.CustomerAccountSearchManager;
import com.banksys.admin.datalayer.entity.auxilary.CustomerAccountAux;
import com.banksys.ebank.datalayer.service.AccountTypeService;
import com.banksys.util.enums.InterestMethod;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Muthu Devendra on 7/1/2017.
 *
 */
@Controller
@RequestMapping("/admin/account/customerAccountSearch")
public class CustomerAccountSearchController {

    private final AccountTypeService accountTypeService;
    private final CustomerAccountSearchManager customerAccountSearchManager;

    @Autowired
    public CustomerAccountSearchController(AccountTypeService accountTypeService,
                                           CustomerAccountSearchManager customerAccountSearchManager) {
        this.accountTypeService = accountTypeService;
        this.customerAccountSearchManager = customerAccountSearchManager;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@customerAccountSearch_VIEW')")
    public String getPage(Model model) {
        this.getPageData(model);
        model.addAttribute("customerAccount", new CustomerAccountAux());
        return "customerAccountSearch";
    }

    @RequestMapping(value = "/searchCustomerAccounts", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@customerAccountSearch_VIEW')")
    public String searchCustomerAccounts(@ModelAttribute CustomerAccountAux customerAccountAux, Model model){
        model.addAttribute("customerAccountList", this.customerAccountSearchManager.findCustomerAccounts(customerAccountAux));
        this.getPageData(model);
        return "customerAccountSearch";
    }

    private Model getPageData(Model model) {
        model.addAttribute("accountTypeList", this.accountTypeService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("interestMethodList", InterestMethod.values());
        return model;
    }
}
