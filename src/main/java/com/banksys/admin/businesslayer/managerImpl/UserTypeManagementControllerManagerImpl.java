package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserTypeManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.common.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Oshada on 6/29/2017.
 */
@Service
public class UserTypeManagementControllerManagerImpl implements UserTypeManagementControllerManager {

    private final UserTypeService userTypeService;
    @Autowired
    public UserTypeManagementControllerManagerImpl(UserTypeService userTypeService) {
        this.userTypeService = userTypeService;
    }

    @Override
    public ResponseObject saveUserTypeManagement(UserType userType) {
        this.userTypeService.save(userType);
        ResponseObject responseObject = new ResponseObject(userType, true);
        responseObject.setMessage("UserType Saved Successfully");
        return responseObject;
    }
}

