package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.SHAEncoder;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Service
public class UserManagementManagerImpl implements UserManagementManager {

    private final UserTypeService userTypeService;

    @Autowired
    public UserManagementManagerImpl(UserTypeService userTypeService) {
        this.userTypeService = userTypeService;
    }

    @Override
    public User getDefaultUser(String username) {
        User user = new User();
        UserType userType = this.userTypeService.findByUserTypeAndStatusNot("Customer", MasterDataStatus.DELETED.getStatusSeq());
        user.setUserTypeId(userType.getUserTypeId());
        user.setUsername(username);
        user.setEnabled(1);
        user.setPassword(SHAEncoder.SHA1(username));
        user.setUnhashedPassword(username);
        return user;
    }
}
