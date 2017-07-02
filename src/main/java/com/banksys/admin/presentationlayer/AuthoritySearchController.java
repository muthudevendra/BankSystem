package com.banksys.admin.presentationlayer;

import com.banksys.admin.datalayer.service.AuthorityService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Muthu Devendra on 6/29/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/authoritySearch")
public class AuthoritySearchController {

    private final AuthorityService authorityService;

    @Autowired
    public AuthoritySearchController(AuthorityService authorityService) {
        this.authorityService = authorityService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@authoritySearch_VIEW')")
    public String getPage(Model model){
        model.addAttribute("authorityList", this.authorityService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return "authoritySearch";
    }
}
