package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.Module;
import com.banksys.common.ResponseObject;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by lakshithar on 6/23/2017.
 *
 */
@Component
public interface ModuleManagementControllerManager {
    ResponseObject saveModule(Module module, HttpServletRequest request);
}
