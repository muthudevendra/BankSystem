package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.admin.datalayer.entity.Currency;
import com.banksys.admin.datalayer.service.CurrencyService;
import com.banksys.util.ResponseObject;
import com.banksys.ebank.businesslayer.manager.ThirdPartyTransferControllerManager;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.Date;

/**
 * Created by lakshithar on 6/30/2017.
 *
 */
@Service
public class ThirdPartyTransferControllerManagerImpl implements ThirdPartyTransferControllerManager{

    private final CustomerAccountService customerAccountService;
    private final ThirdPartyTransferService thirdPartyTransferService;
    private final CurrencyService currencyService;

    @Autowired
    public ThirdPartyTransferControllerManagerImpl(CustomerAccountService customerAccountService,
                                                   ThirdPartyTransferService thirdPartyTransferService,
                                                   CurrencyService currencyService) {
        this.customerAccountService = customerAccountService;
        this.thirdPartyTransferService = thirdPartyTransferService;
        this.currencyService = currencyService;
    }

    @Override
    @Transactional
    public ResponseObject transfer(ThirdPartyTransfer thirdPartyTransfer) {
        ResponseObject responseObject;
        CustomerAccount dbFromAccount = this.customerAccountService.findOne(thirdPartyTransfer.getFromAccountId());

        Double availableBalance = dbFromAccount.getAvailableBalance();
        Double minAccountAmount = dbFromAccount.getAccount().getAccountType().getMinDeposit();
        if(thirdPartyTransfer.getAmount() > (availableBalance + minAccountAmount)){
            responseObject = new ResponseObject("Cannot overdraw", false);
            responseObject.setObject(thirdPartyTransfer);
        }
        else{
            thirdPartyTransfer.setStatus(MasterDataStatus.OPEN.getStatusSeq());

            Date today = java.sql.Date.valueOf(LocalDate.now());

            if(thirdPartyTransfer.getTransferDate().before(today)){
                responseObject = new ResponseObject("Can not schedule to previous dates", false);
            }
            else {
                if (thirdPartyTransfer.getTransferDate().equals(today)) {
                    thirdPartyTransfer.setTransferDate(new Date());
                    Currency payingCurrency = this.currencyService.findOne(thirdPartyTransfer.getCurrencySeq());
                    Double convertedAmount = (thirdPartyTransfer.getAmount() * payingCurrency.getRate()) / dbFromAccount.getCurrency().getRate();
                    dbFromAccount.setAvailableBalance(availableBalance - convertedAmount);
                    thirdPartyTransfer.setAccountBalance(dbFromAccount.getAvailableBalance());
                    thirdPartyTransfer.setTransferStatus(TransferStatus.SENT.getTransferStatusSeq());
                    responseObject = new ResponseObject("Transfer Successful", true);
                } else {
                    thirdPartyTransfer.setAccountBalance(dbFromAccount.getAvailableBalance());
                    thirdPartyTransfer.setTransferStatus(TransferStatus.SCHEDULED.getTransferStatusSeq());
                    responseObject = new ResponseObject("Transfer Scheduled", true);
                }
                this.thirdPartyTransferService.save(thirdPartyTransfer);
            }
            responseObject.setObject(thirdPartyTransfer);
        }
        return responseObject;
    }
}
