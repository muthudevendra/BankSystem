package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Repository
public interface AccountService extends JpaRepository<Account, Integer> {
}
