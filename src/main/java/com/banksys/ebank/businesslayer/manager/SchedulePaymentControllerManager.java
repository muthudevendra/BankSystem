package com.banksys.ebank.businesslayer.manager;

import com.banksys.ebank.datalayer.entity.BillPayment;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.List;

/**
 * Created by Lakshitha on 03-Jul-17.
 *
 */
@Component
public interface SchedulePaymentControllerManager {
    List<BillPayment> findSchedulePayments(HttpServletRequest request, Principal principal);
}
