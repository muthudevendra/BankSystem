package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.ModuleManagementControllerManager;
import com.banksys.admin.datalayer.entity.Module;
import com.banksys.admin.datalayer.service.ModuleService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

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
    public ResponseObject saveModule(Module module) {
        module.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        module = this.moduleService.save(module);
        ResponseObject responseObject = new ResponseObject(module, true);
        responseObject.setMessage("Module Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateModule(Module module) {
        Module dbModule = this.moduleService.findOne(module.getModuleId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if (dbModule.equals(module)) {
            responseObject = new ResponseObject("No changes found", false);
            isUpdatable = false;
        } else {
            if (module.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@moduleManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("Module Deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            } else {
                responseObject = new ResponseObject("Module updated Successfully", true);
                isUpdatable = true;
            }
        }
        if (isUpdatable) {
            module = this.moduleService.save(module);
        }
        responseObject.setObject(module);
        return responseObject;
    }
}
