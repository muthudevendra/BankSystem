package com.banksys.admin.datalayer.entity;

import com.banksys.util.enums.AccountLockStatus;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

/**
 * Created by Lakshitha on 05-Jul-17.
 *
 */
@Entity
@Table(name = "user_login_failure_audit")
public class UserLoginFailureAudit {
    private Integer userLoginFailureAuditId;
    private Integer userId;
    private Date attemptedDate;
    private Integer numberOfAttempts;
    private Integer lockedStatus;
    private Date unlockedAt;

    private User user;

    private String lockDescription;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "USER_LOGIN_FAILURE_AUDIT_ID")
    public Integer getUserLoginFailureAuditId() {
        return userLoginFailureAuditId;
    }

    public void setUserLoginFailureAuditId(Integer userLoginFailureAuditId) {
        this.userLoginFailureAuditId = userLoginFailureAuditId;
    }

    @Basic
    @Column(name = "USER_ID")
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "ATTEMPTED_DATE")
    public Date getAttemptedDate() {
        return attemptedDate;
    }

    public void setAttemptedDate(Date attemptedDate) {
        this.attemptedDate = attemptedDate;
    }

    @Basic
    @Column(name = "NUMBER_OF_ATTEMPTS")
    public Integer getNumberOfAttempts() {
        return numberOfAttempts;
    }

    public void setNumberOfAttempts(Integer numberOfAttempts) {
        this.numberOfAttempts = numberOfAttempts;
    }

    @Basic
    @Column(name = "LOCKED_STATUS")
    public Integer getLockedStatus() {
        return lockedStatus;
    }

    public void setLockedStatus(Integer lockedStatus) {
        this.lockedStatus = lockedStatus;
        if(lockedStatus != null){
            this.setLockDescription(AccountLockStatus.findOne(lockedStatus).getAccountLockStatus());
        }
    }

    @Basic
    @Column(name = "UNLOCKED_AT")
    public Date getUnlockedAt() {
        return unlockedAt;
    }

    public void setUnlockedAt(Date unlockedAt) {
        this.unlockedAt = unlockedAt;
    }

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ID", insertable = false, updatable = false)
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Transient
    public String getLockDescription() {
        return lockDescription;
    }

    public void setLockDescription(String lockDescription) {
        this.lockDescription = lockDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserLoginFailureAudit that = (UserLoginFailureAudit) o;
        return Objects.equals(userLoginFailureAuditId, that.userLoginFailureAuditId) &&
                Objects.equals(userId, that.userId) &&
                Objects.equals(attemptedDate, that.attemptedDate) &&
                Objects.equals(numberOfAttempts, that.numberOfAttempts) &&
                Objects.equals(lockedStatus, that.lockedStatus) &&
                Objects.equals(unlockedAt, that.unlockedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userLoginFailureAuditId, userId, attemptedDate, numberOfAttempts, lockedStatus, unlockedAt);
    }
}
