package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.SchedulePaymentControllerManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
@RequestMapping("/ebank/payment/schedulePayment")
public class SchedulePaymentController {

    private final SchedulePaymentControllerManager schedulePaymentControllerManager;

    @Autowired
    public SchedulePaymentController(SchedulePaymentControllerManager schedulePaymentControllerManager) {
        this.schedulePaymentControllerManager = schedulePaymentControllerManager;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@schedulePayment_VIEW')")
    public String getPage(Model model, HttpServletRequest request, Principal principal){
        model.addAttribute("schedulePaymentList", this.schedulePaymentControllerManager.findSchedulePayments(request, principal));
        return "schedulePayment";
    }
}
