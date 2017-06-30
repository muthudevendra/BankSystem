package com.banksys.ebank.businesslayer.manager;

import com.banksys.ebank.datalayer.entity.auxilary.AccountTransferAux;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by lakshithar on 6/29/2017.
 *
 */
@Component
public interface AccountStatementControllerManager {
    List<AccountTransferAux> findAllTransfers(Integer customerAccountId);
}
