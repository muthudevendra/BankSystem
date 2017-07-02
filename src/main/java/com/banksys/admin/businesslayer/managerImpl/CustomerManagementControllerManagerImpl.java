package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerManagementControllerManager;
import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Service
public class CustomerManagementControllerManagerImpl implements CustomerManagementControllerManager {

    private final CustomerService customerService;
    private final UserManagementManager userManagementManager;

    @Autowired
    public CustomerManagementControllerManagerImpl(CustomerService customerService,
                                                   UserManagementManager userManagementManager) {
        this.customerService = customerService;
        this.userManagementManager = userManagementManager;
    }

    @Override
    public ResponseObject saveCustomer(Customer customer) {
        customer.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        customer.getAddressBook().setStatus(MasterDataStatus.OPEN.getStatusSeq());
        User defaultUser = this.userManagementManager.getDefaultUser(customer.getFirstName());
        customer.setUser(defaultUser);
        this.customerService.save(customer);
        ResponseObject responseObject = new ResponseObject(customer, true);
        responseObject.setMessage("Customer Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateCustomer(Customer customer) {
        Customer dbCustomer = this.customerService.findOne(customer.getCustomerId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if(dbCustomer.equals(customer)){
            responseObject = new ResponseObject("No changes found", false);
            isUpdatable = false;
        }
        else{
            if (customer.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@customerManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("Customer Deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            } else {
                responseObject = new ResponseObject("Customer updated Successfully", true);
                isUpdatable = true;
            }
        }
        if(isUpdatable){
            customer = this.customerService.save(customer);
        }
        responseObject.setObject(customer);
        return responseObject;
    }
}
