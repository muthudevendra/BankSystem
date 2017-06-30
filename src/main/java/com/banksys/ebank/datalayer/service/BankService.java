package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.Bank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Lakshitha on 30-Jun-17.
 *
 */
@Repository
public interface BankService extends JpaRepository<Bank, Integer> {
    List<Bank> findByStatusNot(Integer status);
}
