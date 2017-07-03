package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Repository
public interface CustomerAccountService extends JpaRepository<CustomerAccount, Integer> , QueryDslPredicateExecutor<CustomerAccount> {
    List<CustomerAccount> findByCustomerUserIdAndStatusNot(Integer userId, Integer status);
    List<CustomerAccount> findAllByStatusNot(Integer status);
}
