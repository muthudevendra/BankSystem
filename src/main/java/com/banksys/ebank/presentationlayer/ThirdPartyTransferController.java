package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.ThirdPartyTransferControllerManager;
import com.banksys.ebank.datalayer.entity.ThirdPartyTransfer;
import com.banksys.ebank.datalayer.service.BankService;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/thirdPartyTransfer")
public class ThirdPartyTransferController {

    private final ThirdPartyTransferControllerManager thirdPartyTransferControllerManager;
    private final CustomerAccountService customerAccountService;
    private final BankService bankService;

    @Autowired
    public ThirdPartyTransferController(ThirdPartyTransferControllerManager thirdPartyTransferControllerManager, CustomerAccountService customerAccountService,
                                        BankService bankService) {
        this.thirdPartyTransferControllerManager = thirdPartyTransferControllerManager;
        this.customerAccountService = customerAccountService;
        this.bankService = bankService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_VIEW')")
    public String getPage(Model model, HttpServletRequest request){
        model = this.getPageData(model, request);
        model.addAttribute("thirdPartyAccountTransfer", new ThirdPartyTransfer());
        return "thirdPartyTransfer";
    }

    @RequestMapping(value = "/doTransfer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('ebank@thirdPartyAccountTransfer_TRANSFER')")
    public String transfer(@ModelAttribute ThirdPartyTransfer thirdPartyTransfer, Model model, HttpServletRequest request) {
        this.thirdPartyTransferControllerManager.transfer(thirdPartyTransfer);
        model = getPageData(model, request);
        model.addAttribute("thirdPartyAccountTransfer", thirdPartyTransfer);
        return "thirdPartyTransfer";
    }

    private Model getPageData(Model model, HttpServletRequest request) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        model.addAttribute("bankList", this.bankService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
