package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lakshithar on 6/30/2017.
 *
 */
@Repository
public interface ThirdPartyTransferService extends JpaRepository<ThirdPartyTransfer, Integer>{
    List<ThirdPartyTransfer> findByFromAccountIdAndTransferStatusAndStatusNot(Integer fromAccountId, Integer transferStatus, Integer status);
}
