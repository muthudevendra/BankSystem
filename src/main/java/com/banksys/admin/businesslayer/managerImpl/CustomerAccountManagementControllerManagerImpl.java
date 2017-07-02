package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerAccountManagementControllerManager;
import com.banksys.admin.datalayer.entity.NoGenerator;
import com.banksys.admin.datalayer.service.NoGeneratorService;
import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.AccountNoGeneratorUtil;
import com.banksys.util.enums.Currency;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 * Created by lakshithar on 6/27/2017.
 *
 */
@Service
public class CustomerAccountManagementControllerManagerImpl implements CustomerAccountManagementControllerManager {

    private final CustomerAccountService customerAccountService;
    private final NoGeneratorService noGeneratorService;

    @Autowired
    public CustomerAccountManagementControllerManagerImpl(CustomerAccountService customerAccountService,
                                                          NoGeneratorService noGeneratorService) {
        this.customerAccountService = customerAccountService;
        this.noGeneratorService = noGeneratorService;
    }

    @Override
    public ResponseObject saveCustomerAccount(CustomerAccount customerAccount) {
        customerAccount.setVersion(0);
        customerAccount.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        customerAccount.getAccount().setStatus(MasterDataStatus.OPEN.getStatusSeq());

        //Make this Atomic-Thread Safe
        NoGenerator noGenerator = this.noGeneratorService.findByName("Account");
        customerAccount.setAccountNo(AccountNoGeneratorUtil.getAccountNo(noGenerator.getNextNo()));
        noGenerator.setPreviousNo(noGenerator.getNextNo());
        noGenerator.setNextNo(noGenerator.getNextNo() + 1);

        //Remove Hardcoded Values
        customerAccount.setCurrencyId(Currency.LKR.getCurrencySeq());

        this.customerAccountService.save(customerAccount);
        ResponseObject responseObject = new ResponseObject(customerAccount, true);
        responseObject.setMessage("Customer Account Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateCustomerAccount(CustomerAccount customerAccount) {
        CustomerAccount dbCustomerAccount = this.customerAccountService.findOne(customerAccount.getCustomerId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if(dbCustomerAccount.equals(customerAccount)){
            responseObject = new ResponseObject("No changes found", false);
            isUpdatable = false;
        }
        else{
            if (customerAccount.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@customerAccountManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("Customer Account Deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            }
            else {
                responseObject = new ResponseObject("Customer Account updated Successfully", true);
                isUpdatable = true;
            }
        }
        if(isUpdatable) {
            customerAccount = this.customerAccountService.save(customerAccount);
        }
        responseObject.setObject(customerAccount);
        return responseObject;
    }
}
