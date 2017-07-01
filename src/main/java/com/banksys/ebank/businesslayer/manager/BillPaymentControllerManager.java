package com.banksys.ebank.businesslayer.manager;

import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.BillPayment;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Component
public interface BillPaymentControllerManager {
    ResponseObject doPay(BillPayment billPayment);
}
