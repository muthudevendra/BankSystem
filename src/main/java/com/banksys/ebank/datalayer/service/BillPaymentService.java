package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.BillPayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Repository
public interface BillPaymentService extends JpaRepository<BillPayment, Integer> {
    List<BillPayment> findByFromAccountIdInAndTransferStatusAndStatusNot(List<Integer> customerAccountIds, Integer transferStatus, Integer status);
}
