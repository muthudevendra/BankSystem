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

    @Override
    public ResponseObject updateCustomer(Customer customer) {
        Customer dbCustomer = this.customerService.findOne(customer.getCustomerId());
        ResponseObject responseObject = new ResponseObject();
        responseObject.setObject(customer);
        if(dbCustomer.equals(customer)){
            responseObject = new ResponseObject("No changes found", false);
        }
        else{
            if(customer.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())){
                customer.getAddressBook().setStatus(MasterDataStatus.DELETED.getStatusSeq());
            }
            customer = this.customerService.save(customer);
            responseObject = new ResponseObject("Customer updated Successfully", true);
            responseObject.setObject(customer);
        }
        return responseObject;
    }

    @Override
    public ResponseObject deleteCustomer(Integer customerId) {
        Customer dbCustomer = this.customerService.findOne(customerId);
        ResponseObject responseObject = new ResponseObject();
        if(dbCustomer == null){
            responseObject.setStatus(false);
            responseObject.setMessage("Customer already deleted");
        }
        else{
            dbCustomer.setStatus(MasterDataStatus.DELETED.getStatusSeq());
            dbCustomer = this.customerService.save(dbCustomer);
            responseObject.setStatus(true);
            responseObject.setMessage("Customer Deleted Successfully");
            responseObject.setObject(dbCustomer);
        }
        return responseObject;
    }
}
