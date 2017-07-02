package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerAccountSearchManager;
import com.banksys.admin.datalayer.entity.auxilary.CustomerAccountAux;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.entity.QCustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import com.querydsl.core.BooleanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */
@Service
public class CustomerAccountSearchManagerImpl implements CustomerAccountSearchManager{

    private final CustomerAccountService customerAccountService;

    @Autowired
    public CustomerAccountSearchManagerImpl(CustomerAccountService customerAccountService) {
        this.customerAccountService = customerAccountService;
    }

    @Override
    public List<CustomerAccount> findCustomerAccounts(CustomerAccountAux customerAccountAux) {
        QCustomerAccount customerAccount = QCustomerAccount.customerAccount;
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        if(customerAccountAux.getCustomer() != null && !customerAccountAux.getCustomer().isEmpty()){
            booleanBuilder.and(customerAccount.customer.nic.contains(customerAccountAux.getCustomer()));
        }
        if(customerAccountAux.getAccountType() != null && (customerAccountAux.getAccountType() > 0)){
            booleanBuilder.and(customerAccount.account.accountTypeId.eq(customerAccountAux.getAccountType()));
        }
        if(customerAccountAux.getInterestMethod() != null && (customerAccountAux.getInterestMethod() > -1)){
            booleanBuilder.and(customerAccount.account.interestCalMethod.eq(customerAccountAux.getInterestMethod()));
        }
        booleanBuilder.and(customerAccount.status.ne(MasterDataStatus.DELETED.getStatusSeq()));
        return (List<CustomerAccount>)this.customerAccountService.findAll(booleanBuilder);
    }
}
