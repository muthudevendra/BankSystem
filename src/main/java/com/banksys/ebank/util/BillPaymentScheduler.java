package com.banksys.ebank.util;

import com.banksys.ebank.datalayer.entity.BillPayment;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.BillPaymentService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * Created by Lakshitha on 03-Jul-17.
 *
 */

@Service
public class BillPaymentScheduler {

    private final BillPaymentService billPaymentService;
    private final CustomerAccountService customerAccountService;

    @Autowired
    public BillPaymentScheduler(BillPaymentService billPaymentService, CustomerAccountService customerAccountService) {
        this.billPaymentService = billPaymentService;
        this.customerAccountService = customerAccountService;
    }

    @Scheduled(fixedRate = 60000 * 60)
    public void doPay(){
        Date today = java.sql.Date.valueOf(LocalDate.now());
        List<BillPayment> billPaymentList = this.billPaymentService.findByPaymentDateAndTransferStatusAndStatusNot(
                today, TransferStatus.SCHEDULED.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()
        );
        try {
            for (BillPayment billPayment : billPaymentList) {
                CustomerAccount dbCustomerAccount = this.customerAccountService.findOne(billPayment.getBillPaymentId());
                dbCustomerAccount.setAvailableBalance(dbCustomerAccount.getAvailableBalance() - billPayment.getAmount());
                billPayment.setTransferStatus(TransferStatus.SENT.getTransferStatusSeq());
                this.customerAccountService.save(dbCustomerAccount);
                this.billPaymentService.save(billPayment);
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
