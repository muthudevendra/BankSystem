package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.data.querydsl.binding.QuerydslPredicate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Oshada on 6/29/2017.
 *
 */
@Repository
public interface UserTypeService extends JpaRepository<UserType, Integer>{
    UserType findByUserTypeAndStatusNot(String userType, Integer status);

    List<UserType> findByStatusNot(Integer status);
}
