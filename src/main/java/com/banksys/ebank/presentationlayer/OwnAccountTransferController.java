package com.banksys.ebank.presentationlayer;

import com.banksys.ebank.businesslayer.manager.OwnAccountTransferControllerManager;
import com.banksys.ebank.datalayer.entity.OwnAccountTransfer;
import com.banksys.ebank.datalayer.service.CustomerAccountService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import static com.banksys.ebank.datalayer.entity.QCustomerAccount.customerAccount;

/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */
@Controller
@RequestMapping("/ebank/transfer/ownAccount")
public class OwnAccountTransferController {

    private final OwnAccountTransferControllerManager ownAccountTransferControllerManager;
    private final CustomerAccountService customerAccountService;

    @Autowired
    public OwnAccountTransferController(OwnAccountTransferControllerManager ownAccountTransferControllerManager,
                                        CustomerAccountService customerAccountService) {
        this.ownAccountTransferControllerManager = ownAccountTransferControllerManager;
        this.customerAccountService = customerAccountService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ebank@ownAccountTransfer_VIEW')")
    public String getPage(Model model, HttpServletRequest request){
        model = this.getPageData(model, request);
        model.addAttribute("ownAccountTransfer", new OwnAccountTransfer());
        return "ownAccount";
    }

    @RequestMapping(value = "/doTransfer", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('ebank@ownAccountTransfer_TRANSFER')")
    public String transfer(@ModelAttribute OwnAccountTransfer ownAccountTransfer, Model model, HttpServletRequest request) {
        this.ownAccountTransferControllerManager.transfer(ownAccountTransfer);
        model = getPageData(model, request);
        model.addAttribute("ownAccountTransfer", ownAccountTransfer);
        return "customerAccountManagement";
    }

    private Model getPageData(Model model, HttpServletRequest request) {
        Integer userId = (Integer)request.getSession().getAttribute("userId");
        if(userId == null){
            throw new RuntimeException("User not found");
        }
        model.addAttribute("customerAccountList", this.customerAccountService.findByCustomerUserIdAndStatusNot(userId, MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }
}
