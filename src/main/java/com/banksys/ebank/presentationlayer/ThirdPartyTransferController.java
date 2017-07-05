package com.banksys.ebank.presentationlayer;

import com.banksys.admin.datalayer.service.CurrencyService;
import com.banksys.ebank.businesslayer.manager.ThirdPartyTransferControllerManager;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import com.banksys.ebank.datalayer.service.BankService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.Currency;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/thirdPartyTransfer")
public class ThirdPartyTransferController {

    private final ThirdPartyTransferControllerManager thirdPartyTransferControllerManager;
    private final ThirdPartyTransferService thirdPartyTransferService;
    private final CustomerAccountService customerAccountService;
    private final BankService bankService;
    private final CurrencyService currencyService;

    @Autowired
    public ThirdPartyTransferController(ThirdPartyTransferControllerManager thirdPartyTransferControllerManager,
                                        ThirdPartyTransferService thirdPartyTransferService,
                                        CustomerAccountService customerAccountService,
                                        BankService bankService,
                                        CurrencyService currencyService) {
        this.thirdPartyTransferControllerManager = thirdPartyTransferControllerManager;
        this.thirdPartyTransferService = thirdPartyTransferService;
        this.customerAccountService = customerAccountService;
        this.bankService = bankService;
        this.currencyService = currencyService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_VIEW')")
    public String getPage(Model model, HttpServletRequest request){
        model = this.getPageData(model, request);
        model.addAttribute("thirdPartyAccountTransfer", new ThirdPartyTransfer());
        return "thirdPartyTransfer";
    }

    @RequestMapping(params = "thirdPartyAccountTransferId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_VIEW')")
    public String loadPage(@RequestParam("thirdPartyAccountTransferId") Integer thirdPartyAccountTransferId, Model model){
        model.addAttribute("thirdPartyAccountTransfer", this.thirdPartyTransferService.findOne(thirdPartyAccountTransferId));
        return "thirdPartyTransferConfirmation";
    }

    @RequestMapping(value = "/doTransfer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_TRANSFER')")
    public String transfer(@ModelAttribute ThirdPartyTransfer thirdPartyTransfer, Model model, HttpServletRequest request) {
        ResponseObject responseObject = this.thirdPartyTransferControllerManager.transfer(thirdPartyTransfer);
        this.getPageData(model, request);
        this.getResponseData(responseObject, model);
        return "thirdPartyTransfer";
    }

    @RequestMapping(value = "/findAccountBalance", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_VIEW')")
    @ResponseBody
    public Double findAccountBalance(@RequestParam("customerAccountId") Integer customerAccountId) {
        CustomerAccount customerAccount = this.customerAccountService.findOne(customerAccountId);
        return customerAccount.getAvailableBalance();
    }

    @RequestMapping(value = "/findCurrency", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_VIEW')")
    @ResponseBody
    public String findCurrency(@RequestParam("customerAccountId") Integer customerAccountId) {
        CustomerAccount customerAccount = this.customerAccountService.findOne(customerAccountId);
        return customerAccount.getCurrency().getCurrencyCode();
    }

    private Model getPageData(Model model, HttpServletRequest request) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("bankList", this.bankService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("currencyList", this.currencyService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("thirdPartyAccountTransfer", responseObject.getObject());
        model.addAttribute("message", responseObject.getMessage());
        model.addAttribute("status", responseObject.getStatus());
        return model;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
