package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
@Repository
public interface OwnAccountTransferService extends JpaRepository<OwnAccountTransfer, Integer>{
}
