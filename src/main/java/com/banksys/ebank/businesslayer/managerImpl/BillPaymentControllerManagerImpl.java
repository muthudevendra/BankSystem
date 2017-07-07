package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.util.ResponseObject;
import com.banksys.ebank.businesslayer.manager.BillPaymentControllerManager;
import com.banksys.ebank.datalayer.entity.BillPayment;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.BillPaymentService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.Date;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Service
public class BillPaymentControllerManagerImpl implements BillPaymentControllerManager{

    private final CustomerAccountService customerAccountService;
    private final BillPaymentService billPaymentService;

    @Autowired
    public BillPaymentControllerManagerImpl(CustomerAccountService customerAccountService,
                                            BillPaymentService billPaymentService) {
        this.customerAccountService = customerAccountService;
        this.billPaymentService = billPaymentService;
    }

    @Override
    @Transactional
    public ResponseObject doPay(BillPayment billPayment) {
        ResponseObject responseObject;
        CustomerAccount dbFromAccount = this.customerAccountService.findOne(billPayment.getFromAccountId());

        Double availableBalance = dbFromAccount.getAvailableBalance();
        Double minAccountAmount = dbFromAccount.getAccount().getAccountType().getMinDeposit();
        if(billPayment.getAmount() > (availableBalance + minAccountAmount)){
            responseObject = new ResponseObject("Cannot overdraw", false);
            responseObject.setObject(billPayment);
        }
        else{
            billPayment.setStatus(MasterDataStatus.OPEN.getStatusSeq());

            Date today = java.sql.Date.valueOf(LocalDate.now());

            if(billPayment.getPaymentDate().before(today)){
                responseObject = new ResponseObject("Can not schedule to previous dates", false);
            }
            else {
                if (billPayment.getPaymentDate().equals(today)) {
                    dbFromAccount.setAvailableBalance(availableBalance - (billPayment.getAmount() / dbFromAccount.getCurrency().getRate()));
                    billPayment.setAccountBalance(dbFromAccount.getAvailableBalance());
                    billPayment.setTransferStatus(TransferStatus.SENT.getTransferStatusSeq());
                    responseObject = new ResponseObject("Payment Successful", true);
                } else {
                    billPayment.setAccountBalance(dbFromAccount.getAvailableBalance());
                    billPayment.setTransferStatus(TransferStatus.SCHEDULED.getTransferStatusSeq());
                    responseObject = new ResponseObject("Payment Scheduled", true);
                }
                this.billPaymentService.save(billPayment);
            }
            responseObject.setObject(billPayment);
        }
        return responseObject;
    }
}
