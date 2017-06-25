package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.Authority;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Oshada on 6/25/2017.
 */
@Repository
public interface AuthorityService extends JpaRepository<Authority ,Integer> {

}
