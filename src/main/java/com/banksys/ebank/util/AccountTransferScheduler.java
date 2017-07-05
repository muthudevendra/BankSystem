package com.banksys.ebank.util;

import com.banksys.admin.datalayer.entity.Currency;
import com.banksys.admin.datalayer.service.CurrencyService;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Service
public class AccountTransferScheduler {

    private final ThirdPartyTransferService thirdPartyTransferService;
    private final CustomerAccountService customerAccountService;
    private final CurrencyService currencyService;

    @Autowired
    public AccountTransferScheduler(ThirdPartyTransferService thirdPartyTransferService,
                                    CustomerAccountService customerAccountService,
                                    CurrencyService currencyService) {
        this.thirdPartyTransferService = thirdPartyTransferService;
        this.customerAccountService = customerAccountService;
        this.currencyService = currencyService;
    }

    @Scheduled(fixedRate = 60000 * 60)
    public void doTransfer(){
        Date today = java.sql.Date.valueOf(LocalDate.now());
        List<ThirdPartyTransfer> thirdPartyTransferList = this.thirdPartyTransferService.findByTransferDateAndTransferStatusAndStatusNot(
                today, TransferStatus.SCHEDULED.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()
        );
        try {
            for (ThirdPartyTransfer thirdPartyTransfer : thirdPartyTransferList) {
                CustomerAccount dbCustomerAccount = this.customerAccountService.findOne(thirdPartyTransfer.getFromAccountId());
                Currency customerAccountCurrency = this.currencyService.findOne(dbCustomerAccount.getCurrencyId());
                Currency transferCurrency = this.currencyService.findOne(thirdPartyTransfer.getCurrencySeq());
                Double convertedAmount = (thirdPartyTransfer.getAmount() * transferCurrency.getRate()) / customerAccountCurrency.getRate();
                dbCustomerAccount.setAvailableBalance(dbCustomerAccount.getAvailableBalance() - convertedAmount);
                thirdPartyTransfer.setTransferStatus(TransferStatus.SENT.getTransferStatusSeq());
                this.customerAccountService.save(dbCustomerAccount);
                this.thirdPartyTransferService.save(thirdPartyTransfer);
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
