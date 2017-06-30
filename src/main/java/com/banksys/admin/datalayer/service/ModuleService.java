package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.Module;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.stereotype.Repository;

/**
 * Created by lakshithar on 6/23/2017.
 *
 */
@Repository
public interface ModuleService extends JpaRepository<Module, Integer>,QueryDslPredicateExecutor<Module> {
}
