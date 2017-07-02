package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.auxilary.CustomerAccountAux;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */
@Component
public interface CustomerAccountSearchManager {
    List<CustomerAccount> findCustomerAccounts(CustomerAccountAux customerAccountAux);
}
