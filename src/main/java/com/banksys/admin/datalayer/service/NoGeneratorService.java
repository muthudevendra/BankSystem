package com.banksys.admin.datalayer.service;

import com.banksys.admin.datalayer.entity.NoGenerator;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
public interface NoGeneratorService extends JpaRepository<NoGenerator, Integer> {
    NoGenerator findByName(String name);
}
