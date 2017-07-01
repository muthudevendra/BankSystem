package com.banksys.ebank.businesslayer.manager;

import com.banksys.ebank.datalayer.entity.BillPayment;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.List;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Component
public interface PaymentHistoryControllerManager {
    List<BillPayment> findPaymentHistory(HttpServletRequest request, Principal principal);
}
