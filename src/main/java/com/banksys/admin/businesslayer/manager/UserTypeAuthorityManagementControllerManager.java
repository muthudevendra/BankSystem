package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.UserTypeAuthority;
import com.banksys.util.ResponseObject;
import org.springframework.stereotype.Component;

/**
 * Created by Oshada on 6/29/2017.
 *
 */
@Component
public interface UserTypeAuthorityManagementControllerManager {
    ResponseObject saveUserTypeAuthority(UserTypeAuthority userTypeAuthority);

    ResponseObject updateUserTypeAuthority(UserTypeAuthority userTypeAuthority);
}
