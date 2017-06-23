package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.ModuleManagementControllerManager;
import com.banksys.admin.datalayer.entity.Module;
import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.common.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by lakshithar on 6/23/2017.
 *
 */
@Service
public class ModuleManagementControllerManagerImpl implements ModuleManagementControllerManager {
    private final ModuleService moduleService;

    @Autowired
    public ModuleManagementControllerManagerImpl(ModuleService moduleService) {
        this.moduleService = moduleService;
    }

    @Override
    public ResponseObject saveModule(Module module, HttpServletRequest request) {
        module.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        module = this.moduleService.save(module);
        ResponseObject responseObject = new ResponseObject(module, true);
        responseObject.setMessage("Module Save Successfully");
        return responseObject;
    }
}
