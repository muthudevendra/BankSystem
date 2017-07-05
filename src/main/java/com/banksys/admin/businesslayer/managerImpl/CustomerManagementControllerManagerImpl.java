package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.CustomerManagementControllerManager;
import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.util.EmailObject;
import com.banksys.util.EmailSender;
import com.banksys.util.ResponseObject;
import com.banksys.ebank.datalayer.entity.Customer;
import com.banksys.ebank.datalayer.service.CustomerService;
import com.banksys.util.enums.MasterDataStatus;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Service
public class CustomerManagementControllerManagerImpl implements CustomerManagementControllerManager {

    private final CustomerService customerService;
    private final UserManagementManager userManagementManager;
    private final VelocityEngine velocityEngine;
    private final EmailSender emailSender;

    @Autowired
    public CustomerManagementControllerManagerImpl(CustomerService customerService,
                                                   UserManagementManager userManagementManager,
                                                   VelocityEngine velocityEngine,
                                                   EmailSender emailSender) {
        this.customerService = customerService;
        this.userManagementManager = userManagementManager;
        this.velocityEngine = velocityEngine;
        this.emailSender = emailSender;
    }

    @Override
    public ResponseObject saveCustomer(Customer customer) {
        customer.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        customer.getAddressBook().setStatus(MasterDataStatus.OPEN.getStatusSeq());
        User defaultUser = this.userManagementManager.getDefaultUser(customer.getFirstName());
        defaultUser.setUserTypeId(customer.getUserTypeId());
        customer.setUser(defaultUser);
        this.customerService.save(customer);
        this.notifyUserCreation(defaultUser, customer.getAddressBook().getEmail());
        ResponseObject responseObject = new ResponseObject(customer, true);
        responseObject.setMessage("Customer Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateCustomer(Customer customer) {
        Customer dbCustomer = this.customerService.findOne(customer.getCustomerId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if(dbCustomer.equals(customer)){
            responseObject = new ResponseObject("No changes found", false);
            isUpdatable = false;
        }
        else{
            if (customer.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@customerManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("Customer Deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            } else {
                responseObject = new ResponseObject("Customer updated Successfully", true);
                isUpdatable = true;
            }
        }
        if(isUpdatable){
            customer = this.customerService.save(customer);
        }
        responseObject.setObject(customer);
        return responseObject;
    }

    private void notifyUserCreation(User defaultUser, String to){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Map<String, Object> model = new HashMap<>();
        model.put("username", defaultUser.getUsername());
        model.put("password", defaultUser.getUnhashedPassword());
        model.put("date", dateFormat.format(new Date()));
        model.put("title", "Auto Generated Email");
        String emailBody = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "/emailTemplates/NewUserTemplate.vm", "UTF-8", model);
        EmailObject emailObject = new EmailObject();
        emailObject.setBcc("ranasinghe5@gmail.com");
        emailObject.setCc("muthupriyadarshani@gmail.com");
        emailObject.setFrom("alphaalliancebank@gmail.com");
        emailObject.setSubject("System Generated Email");
        emailObject.setTo(to);
        emailObject.setBody(emailBody);
        this.emailSender.sendMail(emailObject);
    }
}
