package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerAccountManagementControllerManager;
import com.banksys.common.ResponseObject;
import com.banksys.ebank.datalayer.entity.Account;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by lakshithar on 6/27/2017.
 *
 */
@Service
public class CustomerAccountManagementControllerManagerImpl implements CustomerAccountManagementControllerManager {

    private final CustomerAccountService customerAccountService;

    @Autowired
    public CustomerAccountManagementControllerManagerImpl(CustomerAccountService customerAccountService) {
        this.customerAccountService = customerAccountService;
    }

    @Override
    public ResponseObject saveCustomerAccount(CustomerAccount customerAccount) {
        customerAccount.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.customerAccountService.save(customerAccount);
        ResponseObject responseObject = new ResponseObject(customerAccount, true);
        responseObject.setMessage("Customer Account Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateCustomerAccount(CustomerAccount customerAccount) {
        CustomerAccount dbCustomerAccount = this.customerAccountService.findOne(customerAccount.getCustomerId());
        ResponseObject responseObject = new ResponseObject();
        responseObject.setObject(customerAccount);
        if(dbCustomerAccount.equals(customerAccount)){
            responseObject = new ResponseObject("No changes found", false);
        }
        else{
            customerAccount = this.customerAccountService.save(customerAccount);
            responseObject = new ResponseObject("Customer Account updated Successfully", true);
        }
        return responseObject;
    }
}
