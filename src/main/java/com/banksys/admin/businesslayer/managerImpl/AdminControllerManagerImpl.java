package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AdminControllerManager;
import com.banksys.ebank.datalayer.entity.Account;
import com.banksys.ebank.datalayer.entity.AccountType;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.ebank.datalayer.service.OwnAccountTransferService;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by shehan on 7/3/2017.
 *
 */
@Service
public class AdminControllerManagerImpl implements AdminControllerManager {

    private CustomerAccountService customerAccountService;
    private OwnAccountTransferService ownAccountTransferService;
    private ThirdPartyTransferService thirdPartyTransferService;

    @Autowired
    public AdminControllerManagerImpl(CustomerAccountService customerAccountService, OwnAccountTransferService ownAccountTransferService, ThirdPartyTransferService thirdPartyTransferService) {
        this.customerAccountService = customerAccountService;
        this.ownAccountTransferService = ownAccountTransferService;
        this.thirdPartyTransferService = thirdPartyTransferService;
    }

    @Override
    public String findCustomerAccountCount() {
        List<CustomerAccount> customerAccountList = this.customerAccountService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq());
        List<AccountType> accountTypeList = customerAccountList.stream().map(CustomerAccount::getAccount).map(Account::getAccountType).collect(Collectors.toList());
        Map<String, Long> customerAccountGroup = accountTypeList.stream().collect(Collectors.groupingBy(AccountType::getAccountTypeName, Collectors.counting()));
        String accountGroup = "{"+customerAccountGroup.entrySet().stream().map(e -> "\""+ e.getKey() + "\"" + ":\"" + String.valueOf(e.getValue()) + "\"")
                .collect(Collectors.joining(", "))+ "}";
        return accountGroup;
    }

    @Override
    public Long findDailyOwnTransferCount() {
        return this.ownAccountTransferService.countByStatusNot(MasterDataStatus.DELETED.getStatusSeq());
    }

    @Override
    public Long findDailyThirdPartyTransferCount() {
        return this.thirdPartyTransferService.countByTransferStatusAndStatusNot(TransferStatus.SENT.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq());
    }

    @Override
    public Long findDailyTransferCount() {
        Long totalTransfers, ownAccountTransferCount , thirdPartyAccountTransferCount;

        ownAccountTransferCount = findDailyOwnTransferCount();
        thirdPartyAccountTransferCount = findDailyThirdPartyTransferCount();
        totalTransfers = ownAccountTransferCount + thirdPartyAccountTransferCount;
        return totalTransfers;
    }

    @Override
    public String findDailyTransferCountChart() {
        Long ownAccountTransferCount , thirdPartyAccountTransferCount;
        Map<String, Long> transferCountGroup = new HashMap<>();

        ownAccountTransferCount = findDailyOwnTransferCount();
        thirdPartyAccountTransferCount = findDailyThirdPartyTransferCount();
        transferCountGroup.put("Own Account Transfer", ownAccountTransferCount);
        transferCountGroup.put("Third Party Account Transfer", thirdPartyAccountTransferCount);
        String transferGroup = "{"+transferCountGroup.entrySet().stream().map(e -> "\""+ e.getKey() + "\"" + ":\"" + String.valueOf(e.getValue()) + "\"")
                .collect(Collectors.joining(", "))+ "}";
        return transferGroup;
    }
}
