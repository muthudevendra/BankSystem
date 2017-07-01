package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.User;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Component
public interface UserManagementManager {
    User getDefaultUser(String firstName);
}
