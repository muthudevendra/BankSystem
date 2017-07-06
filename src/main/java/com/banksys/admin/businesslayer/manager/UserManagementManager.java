package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.util.ResponseObject;
import org.springframework.stereotype.Component;

import javax.jws.soap.SOAPBinding;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Component
public interface UserManagementManager {
    User getDefaultUser(String firstName);

    ResponseObject saveUser(User user);

    ResponseObject updateUser(User user);
}
