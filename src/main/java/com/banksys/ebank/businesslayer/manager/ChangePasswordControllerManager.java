package com.banksys.ebank.businesslayer.manager;

import com.banksys.admin.datalayer.entity.User;
import com.banksys.util.ResponseObject;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 7/5/2017.
 *
 */
@Component
public interface ChangePasswordControllerManager {
    ResponseObject changePassword(User user);
}
