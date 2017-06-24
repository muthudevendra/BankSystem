package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.CustomerAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Repository
public interface CustomerAccountService extends JpaRepository<CustomerAccount, Integer> {
}
