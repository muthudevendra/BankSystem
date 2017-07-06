package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.service.UserService;
import com.banksys.ebank.businesslayer.manager.ChangePasswordControllerManager;
import com.banksys.util.ResponseObject;
import com.banksys.util.SHAEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

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
    public ResponseObject changePassword(User user, HttpServletRequest request) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        ResponseObject responseObject;
        if(user.getPassword().equals(user.getConfirmPassword())) {

            User dbUser = this.userService.findOne(userId);
            String oldSHAPassword = dbUser.getPassword();
            String userTypedOldSHAPassword = SHAEncoder.SHA1(user.getOldPassword());
            if (oldSHAPassword.equals(userTypedOldSHAPassword)) {
                dbUser.setPassword(SHAEncoder.SHA1(user.getPassword()));
                this.userService.save(dbUser);
                responseObject = new ResponseObject("Password Changed Successfully", false);
            } else {
                responseObject = new ResponseObject("Old Password doesn't match", false);
            }
        }
        else{
            responseObject = new ResponseObject("Passwords do not match", false);
        }
        responseObject.setObject(user);
        return responseObject;
    }
}
