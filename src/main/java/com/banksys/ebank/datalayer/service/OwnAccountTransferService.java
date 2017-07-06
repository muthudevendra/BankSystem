package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
@Repository
public interface OwnAccountTransferService extends JpaRepository<OwnAccountTransfer, Integer>{
    List<OwnAccountTransfer> findByFromAccountIdAndStatusNot(Integer accountId, Integer status);

    List<OwnAccountTransfer> findByToAccountIdAndStatusNot(Integer accountId, Integer status);

    Long countByStatusNot(Integer status);
}
