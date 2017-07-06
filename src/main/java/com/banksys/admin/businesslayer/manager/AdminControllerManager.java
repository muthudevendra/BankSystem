package com.banksys.admin.businesslayer.manager;

import org.springframework.stereotype.Component;


/**
 * Created by shehan on 7/3/2017.
 *
 */
@Component
public interface AdminControllerManager {
    String findCustomerAccountCount();

    Long findDailyOwnTransferCount();

    Long findDailyThirdPartyTransferCount();

    Long findDailyTransferCount();

    String findDailyTransferCountChart();
}
