package com.banksys.ebank.businesslayer.manager;

import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import org.springframework.stereotype.Component;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
@Component
public interface OwnAccountTransferControllerManager {
    ResponseObject transfer(OwnAccountTransfer ownAccountTransfer);
}
