package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.util.ResponseObject;
import com.banksys.ebank.businesslayer.manager.OwnAccountTransferControllerManager;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.OwnAccountTransferService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
@Service
public class OwnAccountTransferControllerManagerImpl implements OwnAccountTransferControllerManager{

    private final CustomerAccountService customerAccountService;
    private final OwnAccountTransferService ownAccountTransferService;

    @Autowired
    public OwnAccountTransferControllerManagerImpl(CustomerAccountService customerAccountService, OwnAccountTransferService ownAccountTransferService) {
        this.customerAccountService = customerAccountService;
        this.ownAccountTransferService = ownAccountTransferService;
    }

    @Override
    @Transactional
    public ResponseObject transfer(OwnAccountTransfer ownAccountTransfer) {
        ResponseObject responseObject;
        CustomerAccount dbFromAccount = this.customerAccountService.findOne(ownAccountTransfer.getFromAccountId());
        CustomerAccount dbToAccount = this.customerAccountService.findOne(ownAccountTransfer.getToAccountId());

        Double availableBalance = dbFromAccount.getAvailableBalance();
        Double minAccountAmount = dbFromAccount.getAccount().getAccountType().getMinDeposit();
        if(ownAccountTransfer.getAmount() > (availableBalance + minAccountAmount)){
            responseObject = new ResponseObject("Cannot overdraw", false);
            responseObject.setObject(ownAccountTransfer);
        }
        else if(ownAccountTransfer.getFromAccountId().equals(ownAccountTransfer.getToAccountId())){
            responseObject = new ResponseObject("Same from/account", false);
            responseObject.setObject(ownAccountTransfer);
        }
        else {
            dbFromAccount.setAvailableBalance(availableBalance - ownAccountTransfer.getAmount());
            dbToAccount.setAvailableBalance(dbToAccount.getAvailableBalance() + ownAccountTransfer.getAmount());
            ownAccountTransfer.setTransferDate(new Date());
            ownAccountTransfer.setStatus(MasterDataStatus.OPEN.getStatusSeq());
            ownAccountTransfer.setFromAccountBalance(dbFromAccount.getAvailableBalance());
            ownAccountTransfer.setToAccountBalance(dbToAccount.getAvailableBalance());

            ownAccountTransfer = this.ownAccountTransferService.save(ownAccountTransfer);
            responseObject = new ResponseObject("Transfer Successful", true);
            responseObject.setObject(ownAccountTransfer);
        }
        return responseObject;
    }
}
