package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.util.ResponseObject;
import org.springframework.stereotype.Component;

/**
 * Created by Oshada on 6/25/2017.
 *
 */
@Component
public interface AuthorityManagementControllerManager {
    ResponseObject saveAuthority(Authority authority);

    ResponseObject updateAuthority(Authority authority);
}
