package com.banksys.admin.businesslayer.manager;

import com.banksys.common.ResponseObject;
import com.banksys.ebank.datalayer.entity.Account;
import com.banksys.ebank.datalayer.entity.AccountType;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 6/27/2017.
 *
 */
@Component
public interface CustomerAccountManagementControllerManager {
    ResponseObject saveCustomerAccount(CustomerAccount customerAccount);

    ResponseObject updateCustomerAccount(CustomerAccount customerAccount);
}
