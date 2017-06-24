package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerManagementControllerManager;
import com.banksys.common.ResponseObject;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Service
public class CustomerManagementControllerManagerImpl implements CustomerManagementControllerManager {

    private final CustomerService customerService;

    @Autowired
    public CustomerManagementControllerManagerImpl(CustomerService customerService) {
        this.customerService = customerService;
    }

    @Override
    public ResponseObject saveCustomer(Customer customer) {
        customer.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.customerService.save(customer);
        ResponseObject responseObject = new ResponseObject(customer, true);
        responseObject.setMessage("Customer Saved Successfully");
        return responseObject;
    }
}
