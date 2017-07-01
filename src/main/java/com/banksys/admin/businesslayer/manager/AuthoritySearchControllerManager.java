package com.banksys.admin.businesslayer.manager;

import com.banksys.admin.datalayer.entity.Authority;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by shehan on 7/1/2017.
 *
 */
@Component
public interface AuthoritySearchControllerManager {
    List<Authority> findAuthories();
}
