package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.AccountStatementControllerManager;
import com.banksys.ebank.datalayer.service.AccountTypeService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank/account/accountStatement")
public class AccountStatementController {

    private final AccountTypeService accountTypeService;
    private final CustomerAccountService customerAccountService;
    private final AccountStatementControllerManager accountStatementControllerManager;

    @Autowired
    public AccountStatementController(AccountTypeService accountTypeService,
                                      CustomerAccountService customerAccountService,
                                      AccountStatementControllerManager accountStatementControllerManager) {
        this.accountTypeService = accountTypeService;
        this.customerAccountService = customerAccountService;
        this.accountStatementControllerManager = accountStatementControllerManager;
    }

    @GetMapping
    public String getPage(Model model, HttpServletRequest request){
        model = this.getData(model, request);
        return "accountStatement";
    }

    @RequestMapping(value = "/searchCustomerAccount", method = RequestMethod.GET)
    public String findCustomers(@RequestParam("customerAccountId") Integer customerAccountId,
                                Model model, HttpServletRequest request){
        model = this.getData(model, request);
        model.addAttribute("customerAccount", this.customerAccountService.findOne(customerAccountId));
        model.addAttribute("accountTransactionList", this.accountStatementControllerManager.findAllTransactions(customerAccountId));
        return "accountStatement";
    }

    public Model getData(Model model, HttpServletRequest request){
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }
}
