package com.banksys.ebank.businesslayer.managerImpl;

import com.banksys.ebank.businesslayer.manager.SchedulePaymentControllerManager;
import com.banksys.ebank.datalayer.entity.BillPayment;
import com.banksys.ebank.datalayer.entity.CustomerAccount;
import com.banksys.ebank.datalayer.service.BillPaymentService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Lakshitha on 03-Jul-17.
 *
 */
@Service
public class SchedulePaymentControllerManagerImpl implements SchedulePaymentControllerManager{

    private final CustomerAccountService customerAccountService;
    private final BillPaymentService billPaymentService;

    @Autowired
    public SchedulePaymentControllerManagerImpl(CustomerAccountService customerAccountService,
                                                BillPaymentService billPaymentService) {
        this.customerAccountService = customerAccountService;
        this.billPaymentService = billPaymentService;
    }

    @Override
    public List<BillPayment> findSchedulePayments(HttpServletRequest request, Principal principal) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        List<CustomerAccount> customerAccountList = this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq());
        List<Integer> customerAccountIdList = customerAccountList.stream().map(CustomerAccount::getCustomerAccountId).collect(Collectors.toList());
        return this.billPaymentService.findByFromAccountIdInAndTransferStatusAndStatusNot(
                customerAccountIdList, TransferStatus.SCHEDULED.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()
        );
    }
}
