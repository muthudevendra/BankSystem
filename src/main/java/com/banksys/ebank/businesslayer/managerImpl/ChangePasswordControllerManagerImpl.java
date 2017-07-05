package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.service.UserService;
import com.banksys.ebank.businesslayer.manager.ChangePasswordControllerManager;
import com.banksys.util.ResponseObject;
import com.banksys.util.SHAEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by lakshithar on 7/5/2017.
 *
 */
@Service
public class ChangePasswordControllerManagerImpl implements ChangePasswordControllerManager {

    private final UserService userService;

    @Autowired
    public ChangePasswordControllerManagerImpl(UserService userService) {
        this.userService = userService;
    }

    @Override
    public ResponseObject changePassword(User user) {
        ResponseObject responseObject;
        User dbUser = this.userService.findOne(user.getUserId());
        String oldSHAPassword = SHAEncoder.SHA1(dbUser.getOldPassword());
        String userTypedOldSHAPassword = SHAEncoder.SHA1(user.getPassword());
        if (oldSHAPassword.equals(userTypedOldSHAPassword)) {
            dbUser.setPassword(SHAEncoder.SHA1(user.getPassword()));
            this.userService.save(dbUser);
            responseObject = new ResponseObject("Password Changed Successfull", false);
        } else {
            responseObject = new ResponseObject("Old Password doesn't match", false);
        }
        responseObject.setObject(user);
        return responseObject;
    }
}
