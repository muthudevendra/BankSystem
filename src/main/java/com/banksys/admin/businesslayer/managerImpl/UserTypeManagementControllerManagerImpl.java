package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserTypeManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
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
        userType.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.userTypeService.save(userType);
        ResponseObject responseObject = new ResponseObject(userType, true);
        responseObject.setMessage("UserType Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateUserTypeManagement(UserType userType) {
        UserType dbUserType = this.userTypeService.findOne(userType.getUserTypeId());
        ResponseObject responseObject = new ResponseObject();
        if (dbUserType.equals(userType)) {
            responseObject = new ResponseObject("No changes found", false);
        } else {
            userType = this.userTypeService.save(userType);
            responseObject = new ResponseObject("UserType updated Successfully", true);
        }
        responseObject.setObject(userType);
        return responseObject;
    }
}

