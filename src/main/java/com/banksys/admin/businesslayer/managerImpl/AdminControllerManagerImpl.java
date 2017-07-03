package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AdminControllerManager;
import com.banksys.ebank.datalayer.entity.Account;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * Created by shehan on 7/3/2017.
 */
@Service
public class AdminControllerManagerImpl implements AdminControllerManager {

    private CustomerAccountService customerAccountService;

    @Autowired
    public AdminControllerManagerImpl(CustomerAccountService customerAccountService) {
        this.customerAccountService = customerAccountService;
    }

    @Override
    public Map<String, Integer> findCustomerAccountCount() {
        List<CustomerAccount> accountCount = this.customerAccountService.findAllByStatusNot(MasterDataStatus.DELETED.getStatusSeq());

//        Map<String, Integer> result = accountCount.stream().collect(Collectors.groupingBy());
        return null;
    }
}
