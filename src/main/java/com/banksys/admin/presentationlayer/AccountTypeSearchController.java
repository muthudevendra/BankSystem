package com.banksys.admin.presentationlayer;

import com.banksys.ebank.datalayer.service.AccountTypeService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/1/2017.
 *
 */
@Controller
@RequestMapping("/admin/account/accountTypeSearch")
public class AccountTypeSearchController {

    private final AccountTypeService accountTypeService;

    @Autowired
    public AccountTypeSearchController(AccountTypeService accountTypeService) {
        this.accountTypeService = accountTypeService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@accountTypeSearch_VIEW')")
    public String getPage(Model model){
        model.addAttribute("accountTypeList", this.accountTypeService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return "accountTypeSearch";
    }
}
