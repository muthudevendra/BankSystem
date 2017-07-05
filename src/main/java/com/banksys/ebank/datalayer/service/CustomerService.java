package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Repository
public interface CustomerService extends JpaRepository<Customer, Integer>, QueryDslPredicateExecutor<Customer> {
    List<Customer> findByStatusNot(Integer status);
    Long countCustomersByStatusNot(Integer status);
}
