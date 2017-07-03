package com.banksys.admin.businesslayer.manager;

import com.banksys.ebank.datalayer.entity.CustomerAccount;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Created by shehan on 7/3/2017.
 */
@Component
public interface AdminControllerManager {
    Map<String , Integer> findCustomerAccountCount();
}
