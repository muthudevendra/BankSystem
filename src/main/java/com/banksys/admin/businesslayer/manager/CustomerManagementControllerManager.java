package com.banksys.admin.businesslayer.manager;

import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.Customer;
import org.springframework.stereotype.Component;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Component
public interface CustomerManagementControllerManager {
    ResponseObject saveCustomer(Customer customer);

    ResponseObject updateCustomer(Customer customer);

    ResponseObject deleteCustomer(Integer customerId);
}
