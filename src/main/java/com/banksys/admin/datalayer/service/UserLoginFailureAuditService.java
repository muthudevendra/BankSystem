package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.UserLoginFailureAudit;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Lakshitha on 05-Jul-17.
 *
 */
public interface UserLoginFailureAuditService extends JpaRepository<UserLoginFailureAudit, Integer> {
    UserLoginFailureAudit findByUserId(Integer userId);
}
