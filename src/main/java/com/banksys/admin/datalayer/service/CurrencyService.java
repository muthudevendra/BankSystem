package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.Currency;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Lakshitha on 05-Jul-17.
 *
 */
@Repository
public interface CurrencyService extends JpaRepository<Currency, Integer> {
    List<Currency> findByStatusNot(Integer status);
}
