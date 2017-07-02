package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserTypeAuthoritySearchControllerManager;
import com.banksys.admin.datalayer.entity.auxilary.UserTypeAuthorityAux;
import com.banksys.admin.datalayer.service.UserTypeAuthorityService;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Muthu Devendra on 7/2/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeAuthoritySearch")
public class UserTypeAuthoritySearchController {

    private final UserTypeService userTypeService;
    private final UserTypeAuthoritySearchControllerManager userTypeAuthoritySearchControllerManager;
    private final UserTypeAuthorityService userTypeAuthorityService;

    @Autowired
    public UserTypeAuthoritySearchController(UserTypeService userTypeService,
                                             UserTypeAuthoritySearchControllerManager userTypeAuthoritySearchControllerManager,
                                             UserTypeAuthorityService userTypeAuthorityService) {
        this.userTypeService = userTypeService;
        this.userTypeAuthoritySearchControllerManager = userTypeAuthoritySearchControllerManager;
        this.userTypeAuthorityService = userTypeAuthorityService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@userTypeAuthoritySearch_VIEW')")
    public String getPage(Model model){
        model.addAttribute("userTypeAuthority", new UserTypeAuthorityAux());
        this.getPageData(model);
        return "userTypeAuthoritySearch";
    }

    @RequestMapping(params = "userTypeAuthorityId", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('admin@userTypeAuthoritySearch_VIEW')")
    public String loadPage(@RequestParam("userTypeAuthorityId") Integer userTypeAuthorityId, Model model){
        model.addAttribute("userTypeAuthority", this.userTypeAuthorityService.findOne(userTypeAuthorityId));
        this.getPageData(model);
        return "userTypeAuthoritySearch";
    }

    @RequestMapping(value = "/searchUserTypeAuthorities", method = RequestMethod.POST)
    @PreAuthorize("hasAuthority('admin@userTypeAuthoritySearch_VIEW')")
    public String searchUserTypeAuthorities(@ModelAttribute UserTypeAuthorityAux userTypeAuthorityAux, Model model){
        model.addAttribute("userTypeAuthorityList", this.userTypeAuthoritySearchControllerManager.findUserTypeAuthorities(userTypeAuthorityAux));
        model.addAttribute("userTypeAuthority", userTypeAuthorityAux);
        this.getPageData(model);
        return "userTypeAuthoritySearch";
    }

    private Model getPageData(Model model){
        model.addAttribute("userTypeList", this.userTypeService.findByStatusNot(MasterDataStatus.DELETED.getStatusSeq()));
        return model;
    }
}
