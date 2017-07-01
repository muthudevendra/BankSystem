package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.ebank.businesslayer.manager.AccountStatementControllerManager;
import com.banksys.ebank.datalayer.entity.Account;
import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import com.banksys.ebank.datalayer.service.OwnAccountTransferService;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import com.banksys.util.enums.TransferType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banksys.ebank.datalayer.entity.auxilary.AccountTransferAux;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lakshithar on 6/29/2017.
 */
@Service
public class AccountStatementControllerManagerImpl implements AccountStatementControllerManager {

    private final OwnAccountTransferService ownAccountTransferService;
    private final ThirdPartyTransferService thirdPartyTransferService;

    @Autowired
    public AccountStatementControllerManagerImpl(OwnAccountTransferService ownAccountTransferService,
                                                 ThirdPartyTransferService thirdPartyTransferService) {
        this.ownAccountTransferService = ownAccountTransferService;
        this.thirdPartyTransferService = thirdPartyTransferService;
    }

    public List<AccountTransferAux> findAllTransactions(Integer customerAccountId) {
        List<OwnAccountTransfer> ownAccountTransferWithdraws = this.ownAccountTransferService.findByFromAccountIdAndStatusNot(
                customerAccountId, MasterDataStatus.DELETED.getStatusSeq()
        );
        List<OwnAccountTransfer> ownAccountTransferDeposits = this.ownAccountTransferService.findByToAccountIdAndStatusNot(
                customerAccountId, MasterDataStatus.DELETED.getStatusSeq()
        );
        List<ThirdPartyTransfer> thirdPartyTransferList = this.thirdPartyTransferService.findByFromAccountIdAndTransferStatusAndStatusNot(
                customerAccountId,
                TransferStatus.SENT.getTransferStatusSeq(),
                MasterDataStatus.DELETED.getStatusSeq()
        );
        List<AccountTransferAux> accountTransferAuxList = new ArrayList<>();
        for (OwnAccountTransfer ownAccountTransferWithdraw : ownAccountTransferWithdraws) {
            AccountTransferAux accountTransferAux = this.getInitializedOwnAccountTransfer(ownAccountTransferWithdraw);
            accountTransferAux.setWithdrawAmount(ownAccountTransferWithdraw.getAmount());
            accountTransferAux.setAvailableBalance(ownAccountTransferWithdraw.getFromAccountBalance());
            accountTransferAuxList.add(accountTransferAux);
        }
        for (OwnAccountTransfer ownAccountTransferDeposit : ownAccountTransferDeposits) {
            AccountTransferAux accountTransferAux = this.getInitializedOwnAccountTransfer(ownAccountTransferDeposit);
            accountTransferAux.setDepositAmount(ownAccountTransferDeposit.getAmount());
            accountTransferAux.setAvailableBalance(ownAccountTransferDeposit.getToAccountBalance());
            accountTransferAuxList.add(accountTransferAux);
        }
        for (ThirdPartyTransfer thirdPartyTransfer : thirdPartyTransferList) {
            AccountTransferAux accountTransferAux = this.getInitializedThirdPartyAccountTransfer(thirdPartyTransfer);
            accountTransferAuxList.add(accountTransferAux);
        }
        return accountTransferAuxList;
    }

    private AccountTransferAux getInitializedOwnAccountTransfer(OwnAccountTransfer ownAccountTransfer) {
        AccountTransferAux accountTransferAux = new AccountTransferAux();
        accountTransferAux.setTransferDate(ownAccountTransfer.getTransferDate());
        accountTransferAux.setDescription(ownAccountTransfer.getDescription());
        accountTransferAux.setTransferType(TransferType.OWN.getTransferTypeSeq());
        return accountTransferAux;
    }

    private AccountTransferAux getInitializedThirdPartyAccountTransfer(ThirdPartyTransfer thirdPartyTransfer) {
        AccountTransferAux accountTransferAux = new AccountTransferAux();
        accountTransferAux.setTransferDate(thirdPartyTransfer.getTransferDate());
        accountTransferAux.setAvailableBalance(thirdPartyTransfer.getAccountBalance());
        accountTransferAux.setDescription(thirdPartyTransfer.getDescription());
        accountTransferAux.setWithdrawAmount(thirdPartyTransfer.getAmount());
        accountTransferAux.setTransferType(TransferType.THIRD_PARTY.getTransferTypeSeq());
        return accountTransferAux;
    }
}
