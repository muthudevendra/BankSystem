package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.Module;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lakshithar on 6/23/2017.
 *
 */
@Repository
public interface ModuleService extends JpaRepository<Module, Integer>{
    List<Module> findByStatusNot(Integer status);
}
