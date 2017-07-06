package com.banksys.admin.presentationlayer;

import com.banksys.admin.datalayer.entity.UserLoginFailureAudit;
import com.banksys.admin.datalayer.service.UserLoginFailureAuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by shehan on 7/6/2017.
 */
@Controller
@RequestMapping("/admin/failedLoginSearch")
public class UserLoginFailureAuditSearchController {

    private UserLoginFailureAuditService userLoginFailureAuditService;

    @Autowired
    public UserLoginFailureAuditSearchController(UserLoginFailureAuditService userLoginFailureAuditService) {
        this.userLoginFailureAuditService = userLoginFailureAuditService;
    }

    @GetMapping
    @PreAuthorize("hasAuthority('admin@admin_VIEW')")
    public String getPage(Model model){
        List<UserLoginFailureAudit> userLoginFailureAudits = this.userLoginFailureAuditService.findAll();
        Collections.sort(userLoginFailureAudits, new Comparator<UserLoginFailureAudit>() {
            @Override
            public int compare(UserLoginFailureAudit o1, UserLoginFailureAudit o2) {
                return o2.getAttemptedDate().compareTo(o1.getAttemptedDate());
            }
        });
        model.addAttribute("loginFailedList",userLoginFailureAudits);
        return "failedLoginSearch";
    }
}
