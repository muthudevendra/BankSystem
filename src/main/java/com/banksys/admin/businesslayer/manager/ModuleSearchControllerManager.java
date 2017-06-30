package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.Module;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by shehan on 6/30/2017.
 *
 */
@Component
public interface ModuleSearchControllerManager {
    List<Module> findModules();
}
