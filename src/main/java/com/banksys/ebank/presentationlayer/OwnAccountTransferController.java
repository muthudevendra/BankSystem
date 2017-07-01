package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.OwnAccountTransferControllerManager;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/ownAccount")
public class OwnAccountTransferController {

    private final OwnAccountTransferControllerManager ownAccountTransferControllerManager;
    private final CustomerAccountService customerAccountService;

    @Autowired
    public OwnAccountTransferController(OwnAccountTransferControllerManager ownAccountTransferControllerManager,
                                        CustomerAccountService customerAccountService) {
        this.ownAccountTransferControllerManager = ownAccountTransferControllerManager;
        this.customerAccountService = customerAccountService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@ownAccountTransfer_VIEW')")
    public String getPage(Model model, HttpServletRequest request){
        model = this.getPageData(model, request);
        model.addAttribute("ownAccountTransfer", new OwnAccountTransfer());
        return "ownAccount";
    }

    @RequestMapping(value = "/doTransfer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('ebank@ownAccountTransfer_TRANSFER')")
    public String transfer(@ModelAttribute OwnAccountTransfer ownAccountTransfer, Model model, HttpServletRequest request) {
        ResponseObject responseObject = this.ownAccountTransferControllerManager.transfer(ownAccountTransfer);
        model = getPageData(model, request);
        model.addAttribute("ownAccountTransfer", responseObject.getObject());
        return "ownAccountTransferConfirmation";
    }

    @RequestMapping(value = "/findAccountBalance", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@ownAccountTransfer_VIEW')")
    @ResponseBody
    public Double findAccountBalance(@RequestParam("customerAccountId") Integer customerAccountId) {
        CustomerAccount customerAccount = this.customerAccountService.findOne(customerAccountId);
        return customerAccount.getAvailableBalance();
    }

    @RequestMapping(value = "/findCurrency", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@ownAccountTransfer_VIEW')")
    @ResponseBody
    public String findCurrency(@RequestParam("customerAccountId") Integer customerAccountId) {
        CustomerAccount customerAccount = this.customerAccountService.findOne(customerAccountId);
        return customerAccount.getCurrencyDescription();
    }

    private Model getPageData(Model model, HttpServletRequest request) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }
}
