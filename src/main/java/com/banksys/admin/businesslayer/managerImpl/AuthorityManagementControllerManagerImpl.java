package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.AuthorityManagementControllerManager;
import com.banksys.admin.datalayer.entity.Authority;
import com.banksys.admin.datalayer.service.AuthorityService;
import com.banksys.common.ResponseObject;
import com.banksys.util.enums.MasterDataStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.ServiceMode;

/**
 * Created by Oshada on 6/25/2017.
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
    public ResponseObject deleteAuthority(Integer authorityId) {
        Authority dbAuthority = authorityService.findOne(authorityId);
        ResponseObject responseObject = new ResponseObject();
        if (dbAuthority == null) {
            responseObject.setStatus(false);
            responseObject.setMessage("Authority already deleted");
        } else {
            dbAuthority.setStatus(MasterDataStatus.DELETED.getStatusSeq());
            dbAuthority = this.authorityService.save(dbAuthority);
            responseObject.setStatus(true);
            responseObject.setMessage("Authority Deleted Successfully");
            responseObject.setObject(dbAuthority);
        }

        return responseObject;
    }
}
