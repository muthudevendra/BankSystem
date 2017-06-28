package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by lakshithar on 6/8/2017.
 *
 */
@Controller
@RequestMapping("/ebank/account/accountInquiry")
public class AccountInquiryController {

    private final CustomerAccountService customerAccountService;

    @Autowired
    public AccountInquiryController(CustomerAccountService customerAccountService) {
        this.customerAccountService = customerAccountService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@accountInquiry_VIEW')")
    public String getPage(Model model, HttpServletRequest request){
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        return "accountInquiry";
    }
}
