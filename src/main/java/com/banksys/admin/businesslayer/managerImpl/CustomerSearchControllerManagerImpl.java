package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerSearchControllerManager;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Service
public class CustomerSearchControllerManagerImpl implements CustomerSearchControllerManager {

    private final CustomerService customerService;

    @Autowired
    public CustomerSearchControllerManagerImpl(CustomerService customerService) {
        this.customerService = customerService;
    }

    @Override
    public List<Customer> findCustomers() {
        return this.customerService.findAll();
    }
}
