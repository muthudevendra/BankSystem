package com.banksys.admin.presentationlayer;

import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 7/1/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeSearch")
public class UserTypeSearchController {

    private final UserTypeService userTypeService;

    @Autowired
    public UserTypeSearchController(UserTypeService userTypeService) {
        this.userTypeService = userTypeService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@userTypeSearch_VIEW')")
    public String getPage(Model model) {
        model.addAttribute("userTypeList", this.userTypeService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return "userTypeSearch";
    }
}

