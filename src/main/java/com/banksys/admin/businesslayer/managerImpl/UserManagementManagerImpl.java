package com.banksys.admin.businesslayer.managerImpl;

import com.banksys.admin.businesslayer.manager.UserManagementManager;
import com.banksys.admin.datalayer.entity.User;
import com.banksys.admin.datalayer.entity.UserType;
import com.banksys.admin.datalayer.service.UserTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@Service
public class UserManagementManagerImpl implements UserManagementManager {

    private final UserTypeService userTypeService;

    @Autowired
    public UserManagementManagerImpl(UserTypeService userTypeService) {
        this.userTypeService = userTypeService;
    }

    @Override
    public User getDefaultUser(String username) {
        User user = new User();
        UserType userType = this.userTypeService.findByUserType("Customer");
        user.setUserTypeId(userType.getUserTypeId());
        user.setUsername(username);
        user.setEnabled(0);
        user.setPassword(SHA1(username));
        return user;
    }

    public String SHA256(String word) {
        try {
            MessageDigest md;
            md = MessageDigest.getInstance("SHA-256");
            byte[] sha1hash;
            md.update(word.getBytes("iso-8859-1"), 0, word.length());
            sha1hash = md.digest();
            return convertToHex(sha1hash);
        } catch (Exception e) {
            return "";
        }
    }

    public String SHA1(String word) {
        try {
            MessageDigest md;
            md = MessageDigest.getInstance("SHA-1");
            byte[] sha1hash;
            md.update(word.getBytes("iso-8859-1"), 0, word.length());
            sha1hash = md.digest();
            return convertToHex(sha1hash);
        } catch (Exception e) {
            return "";
        }
    }

    private static String convertToHex(byte[] data) {
        StringBuilder buf = new StringBuilder();
        for (byte aData : data) {
            int halfbyte = (aData >>> 4) & 0x0F;
            int two_halfs = 0;
            do {
                if ((0 <= halfbyte) && (halfbyte <= 9))
                    buf.append((char) ('0' + halfbyte));
                else
                    buf.append((char) ('a' + (halfbyte - 10)));
                halfbyte = aData & 0x0F;
            } while (two_halfs++ < 1);
        }
        return buf.toString();
    }
}
