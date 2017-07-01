package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.UserLoginAudit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
@Repository
public interface UserLoginAuditService extends JpaRepository<UserLoginAudit,Integer> {

    @Query("select u from UserLoginAudit u where u.userLoginAuditId=(select max(userLoginAuditId) from UserLoginAudit where username=:USERNAME)")
    UserLoginAudit lastLogInAudit(@Param("USERNAME") String username);

    List<UserLoginAudit> findByUsername(String username);
}
