package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AccountTypeManagementControllerManager;
import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.AccountType;
import com.banksys.ebank.datalayer.service.AccountTypeService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 * Created by lakshithar on 6/26/2017.
 *
 */
@Service
public class AccountTypeManagementControllerManagerImpl implements AccountTypeManagementControllerManager {

    private final AccountTypeService accountTypeService;

    @Autowired
    public AccountTypeManagementControllerManagerImpl(AccountTypeService accountTypeService) {
        this.accountTypeService = accountTypeService;
    }

    @Override
    public ResponseObject saveAccountType(AccountType accountType) {
        accountType.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.accountTypeService.save(accountType);
        ResponseObject responseObject = new ResponseObject(accountType, true);
        responseObject.setMessage("Account Type Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateAccountType(AccountType accountType) {
        AccountType dbAccountType = this.accountTypeService.findOne(accountType.getAccountTypeId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if(dbAccountType.equals(accountType)){
            responseObject = new ResponseObject("No changes found", false);
            isUpdatable = false;
        }
        else{
            if (accountType.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@accountTypeManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("Account Type deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            } else {
                responseObject = new ResponseObject("Account Type updated Successfully", true);
                isUpdatable = true;
            }
        }
        if(isUpdatable){
            accountType = this.accountTypeService.save(accountType);
        }
        responseObject.setObject(accountType);
        return responseObject;
    }
}
