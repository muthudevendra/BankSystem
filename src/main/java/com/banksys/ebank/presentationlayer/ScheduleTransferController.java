package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.datalayer.service.ThirdPartyTransferService;
import com.banksys.util.enums.MasterDataStatus;
import com.banksys.util.enums.TransferStatus;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/scheduleTransfer")
public class ScheduleTransferController {

    private final ThirdPartyTransferService thirdPartyTransferService;

    @Autowired
    public ScheduleTransferController(ThirdPartyTransferService thirdPartyTransferService) {
        this.thirdPartyTransferService = thirdPartyTransferService;
    }

    @GetMapping
    public String getPage(Model model, HttpServletRequest request){
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("scheduledTransferList", this.thirdPartyTransferService.findByFromAccountCustomerUserIdAndTransferStatusAndStatusNot(
                userId, TransferStatus.SCHEDULED.getTransferStatusSeq(), MasterDataStatus.DELETED.getStatusSeq()));
        return "scheduleTransfer";
    }
}
