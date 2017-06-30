package com.banksys.ebank.util;

import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Service
public class AccountTransferScheduler {

    private final ThirdPartyTransferService thirdPartyTransferService;

    @Autowired
    public AccountTransferScheduler(ThirdPartyTransferService thirdPartyTransferService) {
        this.thirdPartyTransferService = thirdPartyTransferService;
    }

    @Scheduled(fixedRate = 60000 * 1)
    public void doTransfer(){
        Date today = java.sql.Date.valueOf(LocalDate.now());
        List<ThirdPartyTransfer> thirdPartyTransferList = this.thirdPartyTransferService.findByTransferDateAndTransferStatusAndStatusNot(
                today, TransferStatus.SCHEDULED.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()
        );
        System.out.println(thirdPartyTransferList.size());
    }
}
