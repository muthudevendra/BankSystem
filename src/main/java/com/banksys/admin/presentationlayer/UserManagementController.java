package com.banksys.admin.presentationlayer;

import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.util.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Muthu Devendra on 7/1/2017.
 */
@Controller
@RequestMapping("/admin/config/userManagement")
public class UserManagementController {

    private final UserManagementManager userManagementManager;

    @Autowired
    public UserManagementController(UserManagementManager userManagementManager) {
        this.userManagementManager = userManagementManager;
    }

    @GetMapping
    public String getPage(Model model) {
        model.addAttribute("user", new User());
        return "userManagement";
    }

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveUser(User user) {
        ResponseObject responseObject = this.userManagementManager.saveUser(user);

        return "userManagement";
    }
}
