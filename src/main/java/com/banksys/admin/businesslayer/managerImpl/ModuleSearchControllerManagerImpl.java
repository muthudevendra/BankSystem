package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.ModuleSearchControllerManager;
import com.banksys.admin.datalayer.entity.Module;
import com.banksys.admin.datalayer.entity.QModule;
import com.banksys.admin.datalayer.service.ModuleService;
import com.querydsl.core.BooleanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by shehan on 6/30/2017.
 *
 */
@Service
public class ModuleSearchControllerManagerImpl implements ModuleSearchControllerManager{

    private final ModuleService moduleService;

    @Autowired
    public ModuleSearchControllerManagerImpl(ModuleService moduleService){
        this.moduleService = moduleService;
    }

    @Override
    public List<Module> findModules() {
        QModule module = QModule.module;
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        return (List<Module>)this.moduleService.findAll(booleanBuilder);
    }
}
