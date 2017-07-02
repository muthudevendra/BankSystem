package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerSearchControllerManager;
import com.banksys.admin.datalayer.entity.auxilary.CustomerAux;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.entity.QCustomer;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.enums.MasterDataStatus;
import com.querydsl.core.BooleanBuilder;
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
    public List<Customer> findCustomers(CustomerAux customerAux) {
        QCustomer customer = QCustomer.customer;
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        if(customerAux.getNic() != null && !customerAux.getNic().isEmpty()){
            booleanBuilder.and(customer.nic.eq(customerAux.getNic()));
        }
        if(customerAux.getPassportNo() != null && !customerAux.getPassportNo().isEmpty()){
            booleanBuilder.and(customer.passportNo.eq(customerAux.getPassportNo()));
        }
        if(customerAux.getLastName() != null && !customerAux.getLastName().isEmpty()){
            booleanBuilder.and(customer.lastName.eq(customerAux.getLastName()));
        }
        booleanBuilder.and(customer.status.ne(MasterDataStatus.DELETED.getStatusSeq()));
        return (List<Customer>)this.customerService.findAll(booleanBuilder);
    }
}
