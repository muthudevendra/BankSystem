package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.BillPaymentControllerManager;
import com.banksys.ebank.datalayer.entity.BillPayment;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.BillPaymentService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.PaymentType;
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
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank/payment/billPayment")
public class BillPaymentController {

    private final CustomerAccountService customerAccountService;
    private final BillPaymentControllerManager billPaymentControllerManager;
    private final BillPaymentService billPaymentService;

    @Autowired
    public BillPaymentController(CustomerAccountService customerAccountService,
                                 BillPaymentControllerManager billPaymentControllerManager,
                                 BillPaymentService billPaymentService) {
        this.customerAccountService = customerAccountService;
        this.billPaymentControllerManager = billPaymentControllerManager;
        this.billPaymentService = billPaymentService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@billPayment_VIEW')")
    public String loadPage(Model model, HttpServletRequest request){
        model = this.getData(model, request);
        model.addAttribute("billPayment", new BillPayment());
        return "billPayment";
    }

    @RequestMapping(params = "billPaymentId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@billPayment_VIEW')")
    public String loadPage(@RequestParam("billPaymentId") Integer billPaymentId, Model model, HttpServletRequest request){
        model.addAttribute("billPayment", this.billPaymentService.findOne(billPaymentId));
        this.getData(model, request);
        return "billPayment";
    }

    @RequestMapping(value = "/doPay", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('ebank@billPayment_PAY')")
    public String doTransfer(@ModelAttribute BillPayment billPayment, Model model, HttpServletRequest request){
        ResponseObject responseObject = this.billPaymentControllerManager.doPay(billPayment);
        this.getData(model, request);
        this.getResponseData(responseObject, model);
        return "billPayment";
    }

    @RequestMapping(value = "/findAccountBalance", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@billPayment_VIEW')")
    @ResponseBody
    public Double findAccountBalance(@RequestParam("customerAccountId") Integer customerAccountId) {
        CustomerAccount customerAccount = this.customerAccountService.findOne(customerAccountId);
        return customerAccount.getAvailableBalance();
    }

    @RequestMapping(value = "/findCurrency", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ebank@billPayment_VIEW')")
    @ResponseBody
    public String findCurrency(@RequestParam("customerAccountId") Integer customerAccountId) {
        CustomerAccount customerAccount = this.customerAccountService.findOne(customerAccountId);
        return customerAccount.getCurrency().getCurrencyCode();
    }

    private Model getData(Model model, HttpServletRequest request){
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("paymentTypeList", PaymentType.values());
        return model;
    }

    private Model getResponseData(ResponseObject responseObject, Model model){
        model.addAttribute("billPayment", responseObject.getObject());
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
