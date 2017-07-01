package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserTypeAuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import com.banksys.admin.datalayer.service.UserTypeAuthorityService;
import com.banksys.common.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Oshada on 6/29/2017.
 */
@Service
public class UserTypeAuthorityManagementControllerManagerImpl implements UserTypeAuthorityManagementControllerManager {
    private final UserTypeAuthorityService userTypeAuthorityService;

    @Autowired
    public UserTypeAuthorityManagementControllerManagerImpl(UserTypeAuthorityService userTypeAuthorityService) {
        this.userTypeAuthorityService = userTypeAuthorityService;
    }

    @Override
    public ResponseObject saveUserTypeAuthority(UserTypeAuthority userTypeAuthority) {
        userTypeAuthority.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.userTypeAuthorityService.save(userTypeAuthority);
        ResponseObject responseObject = new ResponseObject(userTypeAuthority, true);
        responseObject.setMessage("UserTypeAuthority Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateUserTypeAuthority(UserTypeAuthority userTypeAuthority) {
        UserTypeAuthority dbUserTypeAuthority = this.userTypeAuthorityService.findOne(userTypeAuthority.getAuthorityId());
        ResponseObject responseObject;
        if (dbUserTypeAuthority.equals(userTypeAuthority)) {
            responseObject = new ResponseObject("No change found", false);
        } else {
            userTypeAuthority = this.userTypeAuthorityService.save(userTypeAuthority);
            responseObject = new ResponseObject("User Type Authority Successfully", true);
        }
        responseObject.setObject(userTypeAuthority);
        return responseObject;
    }
}

