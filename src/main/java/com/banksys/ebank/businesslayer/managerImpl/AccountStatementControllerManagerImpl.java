package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.ebank.businesslayer.manager.AccountStatementControllerManager;
import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import com.banksys.ebank.datalayer.service.OwnAccountTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banksys.ebank.datalayer.entity.auxilary.AccountTransferAux;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lakshithar on 6/29/2017.
 *
 */
@Service
public class AccountStatementControllerManagerImpl implements AccountStatementControllerManager {

    private final OwnAccountTransferService ownAccountTransferService;

    @Autowired
    public AccountStatementControllerManagerImpl(OwnAccountTransferService ownAccountTransferService) {
        this.ownAccountTransferService = ownAccountTransferService;
    }

    public List<AccountTransferAux> findAllTransfers(Integer customerAccountId){
        List<OwnAccountTransfer> ownAccountTransferWithdraws = this.ownAccountTransferService.findByFromAccountIdAndStatusNot(
                customerAccountId, MasterDataStatus.DELETED.getStatusSeq()
        );
        List<OwnAccountTransfer> ownAccountTransferDeposits = this.ownAccountTransferService.findByToAccountIdAndStatusNot(
                customerAccountId, MasterDataStatus.DELETED.getStatusSeq()
        );

        List<AccountTransferAux> accountTransferAuxList = new ArrayList<>();
        for (OwnAccountTransfer ownAccountTransferWithdraw: ownAccountTransferWithdraws) {
            AccountTransferAux accountTransferAux = this.getInitializedOwnAccountTransfer(ownAccountTransferWithdraw);
            accountTransferAux.setWithdrawAmount(ownAccountTransferWithdraw.getAmount());
            accountTransferAuxList.add(accountTransferAux);
        }
        for(OwnAccountTransfer ownAccountTransferDeposit: ownAccountTransferDeposits){
            AccountTransferAux accountTransferAux = this.getInitializedOwnAccountTransfer(ownAccountTransferDeposit);
            accountTransferAux.setDepositAmount(ownAccountTransferDeposit.getAmount());
            accountTransferAuxList.add(accountTransferAux);
        }
        return accountTransferAuxList;
    }

    private AccountTransferAux getInitializedOwnAccountTransfer(OwnAccountTransfer ownAccountTransfer){
        AccountTransferAux accountTransferAux = new AccountTransferAux();
        accountTransferAux.setTransferDate(ownAccountTransfer.getTransferDate());
        accountTransferAux.setAvailableBalance(ownAccountTransfer.getAccountBalance());
        accountTransferAux.setDescription(ownAccountTransfer.getDescription());
        accountTransferAux.setTransferType(TransferType.OWN.getTransferTypeSeq());
        return accountTransferAux;
    }
}
