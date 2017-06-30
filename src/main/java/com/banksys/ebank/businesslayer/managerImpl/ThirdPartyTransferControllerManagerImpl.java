package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.common.ResponseObject;
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

    @Autowired
    public ThirdPartyTransferControllerManagerImpl(CustomerAccountService customerAccountService,
                                                   ThirdPartyTransferService thirdPartyTransferService) {
        this.customerAccountService = customerAccountService;
        this.thirdPartyTransferService = thirdPartyTransferService;
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
            dbFromAccount.setAvailableBalance(availableBalance - thirdPartyTransfer.getAmount());
            thirdPartyTransfer.setStatus(MasterDataStatus.OPEN.getStatusSeq());
            thirdPartyTransfer.setAccountBalance(dbFromAccount.getAvailableBalance());

            Date today = java.sql.Date.valueOf(LocalDate.now());

            if(thirdPartyTransfer.getTransferDate().before(today)){
                responseObject = new ResponseObject("Can not schedule to previous dates", false);
            }
            else {
                if (thirdPartyTransfer.getTransferDate().equals(today)) {
                    thirdPartyTransfer.setTransferStatus(TransferStatus.SENT.getTransferStatusSeq());
                    responseObject = new ResponseObject("Transfer Successful", true);
                } else {
                    thirdPartyTransfer.setTransferStatus(TransferStatus.SENT.getTransferStatusSeq());
                    responseObject = new ResponseObject("Transfer Scheduled", true);
                }
                this.thirdPartyTransferService.save(thirdPartyTransfer);
            }
            responseObject.setObject(thirdPartyTransfer);
        }
        return responseObject;
    }
}
