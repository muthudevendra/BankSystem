package com.banksys.ebank.businesslayer.manager;

import com.banksys.common.ResponseObject;
import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 6/30/2017.
 *
 */
@Component
public interface ThirdPartyTransferControllerManager {
    ResponseObject transfer(ThirdPartyTransfer thirdPartyTransfer);
}
