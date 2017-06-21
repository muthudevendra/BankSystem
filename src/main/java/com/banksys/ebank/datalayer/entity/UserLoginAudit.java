package com.banksys.ebank.datalayer.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
@Entity
@Table(name = "user_login_audit")
public class UserLoginAudit {
    private Integer userLoginAuditId;
    private String username;
    private Date loginDate;
    private Date logoutDate;
    private String remoteAddress;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "USER_LOGIN_AUDIT_ID")
    public Integer getUserLoginAuditId() {
        return userLoginAuditId;
    }

    public void setUserLoginAuditId(Integer userLoginAuditId) {
        this.userLoginAuditId = userLoginAuditId;
    }

    @Basic
    @Column(name = "USERNAME")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "LOGIN_DATE")
    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    @Basic
    @Column(name = "LOGOUT_DATE")
    public Date getLogoutDate() {
        return logoutDate;
    }

    public void setLogoutDate(Date logoutDate) {
        this.logoutDate = logoutDate;
    }

    @Basic
    @Column(name = "REMOTE_ADDRESS")
    public String getRemoteAddress() {
        return remoteAddress;
    }

    public void setRemoteAddress(String remoteAddress) {
        this.remoteAddress = remoteAddress;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserLoginAudit that = (UserLoginAudit) o;
        return Objects.equals(userLoginAuditId, that.userLoginAuditId) &&
                Objects.equals(username, that.username) &&
                Objects.equals(loginDate, that.loginDate) &&
                Objects.equals(logoutDate, that.logoutDate) &&
                Objects.equals(remoteAddress, that.remoteAddress);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userLoginAuditId, username, loginDate, logoutDate, remoteAddress);
    }
}
