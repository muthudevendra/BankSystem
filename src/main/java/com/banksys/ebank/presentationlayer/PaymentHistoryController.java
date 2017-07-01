package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.PaymentHistoryControllerManager;
import com.banksys.ebank.datalayer.service.BillPaymentService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */

@Controller
@RequestMapping("/ebank/payment/paymentHistory")
public class PaymentHistoryController {

    private final PaymentHistoryControllerManager paymentHistoryControllerManager;

    @Autowired
    public PaymentHistoryController(PaymentHistoryControllerManager paymentHistoryControllerManager) {
        this.paymentHistoryControllerManager = paymentHistoryControllerManager;
    }

    @GetMapping
    public String getPage(Model model, HttpServletRequest request, Principal principal){
        model.addAttribute("paymentHistoryList", this.paymentHistoryControllerManager.findPaymentHistory(request, principal));
        return "paymentHistory";
    }
}
