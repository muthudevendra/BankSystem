package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserTypeManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 * Created by Oshada on 6/29/2017.
 *
 */
@Service
public class UserTypeManagementControllerManagerImpl implements UserTypeManagementControllerManager {

    private final UserTypeService userTypeService;

    @Autowired
    public UserTypeManagementControllerManagerImpl(UserTypeService userTypeService) {
        this.userTypeService = userTypeService;
    }

    @Override
    public ResponseObject saveUserType(UserType userType) {
        userType.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.userTypeService.save(userType);
        ResponseObject responseObject = new ResponseObject(userType, true);
        responseObject.setMessage("User Type Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateUserType(UserType userType) {
        UserType dbUserType = this.userTypeService.findOne(userType.getUserTypeId());
        Boolean isUpdatable;
        ResponseObject responseObject;
        if (dbUserType.equals(userType)) {
            responseObject = new ResponseObject("No changes found", false);
            isUpdatable = false;
        } else {
            if (userType.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@userTypeManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("User Type deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            }
            else {
                responseObject = new ResponseObject("User Type updated Successfully", true);
                isUpdatable = true;
            }
        }
        if(isUpdatable){
            userType = this.userTypeService.save(userType);
        }
        responseObject.setObject(userType);
        return responseObject;
    }
}

