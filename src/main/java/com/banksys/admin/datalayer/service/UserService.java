package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by lakshithar on 6/20/2017.
 *
 */
@Repository
public interface UserService extends JpaRepository<User, Integer> {
    User findByUsername(String username);
}
