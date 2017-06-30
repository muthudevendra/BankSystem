package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.datalayer.service.BankService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/thirdpartyTransfer")
public class ThirdPartyTransferController {
    private final CustomerAccountService customerAccountService;
    private final BankService bankService;

    @Autowired
    public ThirdPartyTransferController(CustomerAccountService customerAccountService,
                                        BankService bankService) {
        this.customerAccountService = customerAccountService;
        this.bankService = bankService;
    }

    @GetMapping
    public String getPage(Model model, HttpServletRequest request){
        model = this.getPageData(model, request);
        model.addAttribute("thirdPartyAccountTransfer", new Object());
        return "thirdPartyTransfer";
    }

    private Model getPageData(Model model, HttpServletRequest request) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("bankList", this.bankService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }
}
