package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AdminControllerManager;
import com.banksys.ebank.datalayer.entity.Account;
import com.banksys.ebank.datalayer.entity.AccountType;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    @Autowired
    public AdminControllerManagerImpl(CustomerAccountService customerAccountService) {
        this.customerAccountService = customerAccountService;
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
}
