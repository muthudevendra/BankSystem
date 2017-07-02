package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserTypeAuthoritySearchControllerManager;
import com.banksys.admin.datalayer.entity.QUserTypeAuthority;
import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import com.banksys.admin.datalayer.entity.auxilary.UserTypeAuthorityAux;
import com.banksys.admin.datalayer.service.UserTypeAuthorityService;
import com.banksys.util.enums.MasterDataStatus;
import com.querydsl.core.BooleanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */
@Service
public class UserTypeAuthoritySearchControllerManagerImpl implements UserTypeAuthoritySearchControllerManager{

    private final UserTypeAuthorityService userTypeAuthorityService;

    @Autowired
    public UserTypeAuthoritySearchControllerManagerImpl(UserTypeAuthorityService userTypeAuthorityService) {
        this.userTypeAuthorityService = userTypeAuthorityService;
    }

    @Override
    public List<UserTypeAuthority> findUserTypeAuthorities(UserTypeAuthorityAux userTypeAuthorityAux) {
        QUserTypeAuthority userTypeAuthority = QUserTypeAuthority.userTypeAuthority;
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        if(userTypeAuthorityAux.getUserTypeId() != null && userTypeAuthorityAux.getUserTypeId() > 0){
            booleanBuilder.and(userTypeAuthority.userTypeId.eq(userTypeAuthorityAux.getUserTypeId()));
        }
        booleanBuilder.and(userTypeAuthority.status.ne(MasterDataStatus.DELETED.getStatusSeq()));
        return (List<UserTypeAuthority>)this.userTypeAuthorityService.findAll(booleanBuilder);
    }
}
