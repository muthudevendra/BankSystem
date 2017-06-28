package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.auxilary.CustomerAux;
import com.banksys.ebank.datalayer.entity.Customer;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Component
public interface CustomerSearchControllerManager {
    List<Customer> findCustomers(CustomerAux customerAux);
}
