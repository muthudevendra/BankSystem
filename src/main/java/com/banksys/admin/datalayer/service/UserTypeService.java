package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.UserType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Oshada on 6/29/2017.
 *
 */
@Repository
public interface UserTypeService extends JpaRepository<UserType, Integer> {
    UserType findByUserTypeAndStatusNot(String userType, Integer status);


}
