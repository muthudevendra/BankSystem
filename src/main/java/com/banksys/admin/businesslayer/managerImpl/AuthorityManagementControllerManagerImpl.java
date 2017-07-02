package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.admin.datalayer.service.AuthorityService;
import com.banksys.util.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 * Created by Oshada on 6/25/2017.
 *
 */
@Service
public class AuthorityManagementControllerManagerImpl implements AuthorityManagementControllerManager {

    private final AuthorityService authorityService;

    @Autowired
    public AuthorityManagementControllerManagerImpl(AuthorityService authorityService) {
        this.authorityService = authorityService;
    }

    @Override
    public ResponseObject saveAuthority(Authority authority) {
        authority.setStatus(MasterDataStatus.OPEN.getStatusSeq());
        this.authorityService.save(authority);
        ResponseObject responseObject = new ResponseObject(authority, true);
        responseObject.setMessage("Authority Saved Successfully");
        return responseObject;
    }

    @Override
    public ResponseObject updateAuthority(Authority authority) {
        Authority dbAuthority = this.authorityService.findOne(authority.getAuthorityId());
        ResponseObject responseObject;
        Boolean isUpdatable;
        if (dbAuthority.equals(authority)) {
            isUpdatable = false;
            responseObject = new ResponseObject("No changes found", false);
        } else {
            if (authority.getStatus().equals(MasterDataStatus.DELETED.getStatusSeq())) {
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                Boolean isAuthorityFound = authentication.getAuthorities().stream().anyMatch(i -> i.getAuthority().equals("admin@authorityManagement_DELETE"));
                if (isAuthorityFound) {
                    responseObject = new ResponseObject("Authority Deleted Successfully", true);
                    isUpdatable = true;
                } else {
                    responseObject = new ResponseObject("No delete permission, please contact System Admin", false);
                    isUpdatable = false;
                }
            }
            else {
                isUpdatable = true;
                responseObject = new ResponseObject("Authority updated Successfully", true);
            }
        }
        if(isUpdatable){
            authority = this.authorityService.save(authority);
        }
        responseObject.setObject(authority);
        return responseObject;
    }
}
