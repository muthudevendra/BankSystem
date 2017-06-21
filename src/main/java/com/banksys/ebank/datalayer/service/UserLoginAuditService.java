package com.banksys.ebank.datalayer.service;

import com.banksys.ebank.datalayer.entity.UserLoginAudit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
@Repository
public interface UserLoginAuditService extends JpaRepository<UserLoginAudit,Integer> {
}
