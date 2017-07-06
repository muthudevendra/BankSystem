package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.datalayer.service.BillPaymentService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Lakshitha on 08-Jun-17.
 *
 */
@Controller
@RequestMapping("/ebank")
public class EBankController {

    private final CustomerAccountService customerAccountService;
    private final ThirdPartyTransferService thirdPartyTransferService;
    private final BillPaymentService billPaymentService;

    @Autowired
    public EBankController(CustomerAccountService customerAccountService,
                           ThirdPartyTransferService thirdPartyTransferService,
                           BillPaymentService billPaymentService) {
        this.customerAccountService = customerAccountService;
        this.thirdPartyTransferService = thirdPartyTransferService;
        this.billPaymentService = billPaymentService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@ebank_VIEW')")
    public String getPage(Model model, HttpServletRequest request){
        Integer userId = this.getUserId(request);
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("thirdPartyTransferList", this.thirdPartyTransferService.findTop10ByFromAccountCustomerUserIdAndTransferStatusAndStatusNotOrderByTransferDate(
                userId, TransferStatus.SENT.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()
        ));
        model.addAttribute("billPaymentList", this.billPaymentService.findTop10ByFromAccountCustomerUserIdAndTransferStatusAndStatusNotOrderByPaymentDate(
                userId, TransferStatus.SENT.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()
        ));
        return "ebank";
    }

    private Integer getUserId(HttpServletRequest request){
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        return userId;
    }
}
