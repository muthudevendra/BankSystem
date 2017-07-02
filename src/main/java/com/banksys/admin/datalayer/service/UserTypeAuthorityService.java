package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;

/**
 * Created by Oshada on 6/29/2017.
 *
 */
public interface UserTypeAuthorityService extends JpaRepository<UserTypeAuthority,Integer>, QueryDslPredicateExecutor<UserTypeAuthority> {
}
