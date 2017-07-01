package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.util.ResponseObject;
import org.springframework.stereotype.Component;

/**
 * Created by Oshada on 6/29/2017.
 */
@Component
public interface UserTypeManagementControllerManager {
    ResponseObject saveUserTypeManagement(UserType userType);

    ResponseObject updateUserTypeManagement(UserType userType);

}
