package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserTypeManagementControllerManager;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import com.banksys.util.enums.Gender;
import com.banksys.util.enums.MasterDataStatus;
import com.sun.media.sound.ModelDestination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Oshada on 6/27/2017.
 *
 */
@Controller
@RequestMapping("/admin/config/userTypeManagement")
public class UserTypeManagementController {
    private final UserTypeManagementControllerManager userTypeManagementControllerManager;
    private final UserTypeService userTypeService;
    @Autowired
    public UserTypeManagementController(UserTypeManagementControllerManager userTypeManagementControllerManager, UserTypeService userTypeService) {
        this.userTypeManagementControllerManager = userTypeManagementControllerManager;
        this.userTypeService = userTypeService;
    }

    @GetMapping
    public String getPage(Model model) {
        model=this.getPageData(model);
        model.addAttribute("userType",new UserType());
        return "userTypeManagement";
    }


    @RequestMapping(value = "/saveUserTypeManagement",method = RequestMethod.POST)
    public String saveUserTypeManagement(UserType userType, Model model)
    {
        this.userTypeManagementControllerManager.saveUserTypeManagement(userType);
        model=this.getPageData(model);
        model.addAttribute("userType",userType);
        return "userTypeManagement";
    }


    private Model getPageData(Model model){
        model.addAttribute("statusList", MasterDataStatus.values());
        return model;
    }
}
