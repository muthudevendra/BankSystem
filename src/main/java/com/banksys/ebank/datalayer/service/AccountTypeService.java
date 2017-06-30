package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.AccountType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Repository
public interface AccountTypeService extends JpaRepository<AccountType, Integer> {
    List<AccountType> findByStatusNot(Integer status);
}
