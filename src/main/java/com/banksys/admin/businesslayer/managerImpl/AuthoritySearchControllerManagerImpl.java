package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AuthoritySearchControllerManager;
import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.admin.datalayer.service.AuthorityService;
import com.querydsl.core.BooleanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by shehan on 7/1/2017.
 *
 */
@Service
public class AuthoritySearchControllerManagerImpl implements AuthoritySearchControllerManager {

    private AuthorityService authorityService;

    @Autowired
    public AuthoritySearchControllerManagerImpl(AuthorityService authorityService) {
        this.authorityService = authorityService;
    }

    @Override
    public List<Authority> findAuthories() {
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        return (List<Authority>)this.authorityService.findAll(booleanBuilder);
    }
}
