package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import com.banksys.admin.datalayer.entity.auxilary.UserTypeAuthorityAux;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */
@Component
public interface UserTypeAuthoritySearchControllerManager {
    List<UserTypeAuthority> findUserTypeAuthorities(UserTypeAuthorityAux userTypeAuthorityAux);
}
