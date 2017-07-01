package com.banksys.admin.businesslayer.manager;

import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.AccountType;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 6/26/2017.
 *
 */
@Component
public interface AccountTypeManagementControllerManager {
    ResponseObject saveAccountType(AccountType accountType);

    ResponseObject updateAccountType(AccountType accountType);
}
