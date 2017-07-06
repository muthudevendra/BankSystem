package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserService;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.ResponseObject;
import com.banksys.util.SHAEncoder;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.xml.transform.sax.SAXSource;
import java.security.MessageDigest;

/**
 * Created by lakshithar on 7/1/2017.
 */
@Service
public class UserManagementManagerImpl implements UserManagementManager {

    private final UserTypeService userTypeService;
    private final UserService userService;

    @Autowired
    public UserManagementManagerImpl(UserTypeService userTypeService, UserService userService) {
        this.userTypeService = userTypeService;
        this.userService = userService;
    }

    @Override
    public ResponseObject saveUser(User user) {
        user.setPassword(SHAEncoder.SHA1(user.getPassword()));
        user.setEnabled(MasterDataStatus.OPEN.getStatusSeq());
        this.userService.save(user);
        ResponseObject responseObject = new ResponseObject(user, true);
        responseObject.setMessage("User Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateUser(User user) {
        user.setPassword(SHAEncoder.SHA1(user.getPassword()));
        User dbUser = this.userService.findOne(user.getUserId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if (dbUser.equals(user)) {
            responseObject = new ResponseObject("No change found", false);
            isUpdatable = false;

        } else {
            if (user.getEnabled().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@userManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("User deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            } else {
                responseObject = new ResponseObject("User updated Successfully", true);
                isUpdatable = true;
            }

        }

        if (isUpdatable) {
            user = this.userService.save(user);
        }
        responseObject.setObject(user);
        return responseObject;
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
