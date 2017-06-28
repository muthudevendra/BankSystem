package com.banksys.ebank.datalayer.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Account {
    private Integer accountId;
    private Integer accountTypeId;
    private Integer interestCalMethod;
    private Integer mobileBankAvailability;
    private Integer onlineBankAvailability;
    private Integer passbookAvailability;
    private Integer status;
    private String createdBy;
    private Date createdDate;
    private String lastModifiedBy;
    private Date lastModifiedDate;

    private AccountType accountType;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "ACCOUNT_ID")
    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    @Basic
    @Column(name = "ACCOUNT_TYPE_ID")
    public Integer getAccountTypeId() {
        return accountTypeId;
    }

    public void setAccountTypeId(Integer accountTypeId) {
        this.accountTypeId = accountTypeId;
    }

    @Basic
    @Column(name = "INTEREST_CAL_METHOD")
    public Integer getInterestCalMethod() {
        return interestCalMethod;
    }

    public void setInterestCalMethod(Integer interestCalMethod) {
        this.interestCalMethod = interestCalMethod;
    }

    @Basic
    @Column(name = "MOBILE_BANK_AVAILABILITY")
    public Integer getMobileBankAvailability() {
        return mobileBankAvailability;
    }

    public void setMobileBankAvailability(Integer mobileBankAvailability) {
        this.mobileBankAvailability = mobileBankAvailability;
    }

    @Basic
    @Column(name = "ONLINE_BANK_AVAILABILITY")
    public Integer getOnlineBankAvailability() {
        return onlineBankAvailability;
    }

    public void setOnlineBankAvailability(Integer onlineBankAvailability) {
        this.onlineBankAvailability = onlineBankAvailability;
    }

    @Basic
    @Column(name = "PASSBOOK_AVAILABILITY")
    public Integer getPassbookAvailability() {
        return passbookAvailability;
    }

    public void setPassbookAvailability(Integer passbookAvailability) {
        this.passbookAvailability = passbookAvailability;
    }

    @Basic
    @Column(name = "STATUS")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @CreatedBy
    @Column(name = "CREATED_BY", nullable = false, length = 50, updatable = false)
    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Basic
    @CreatedDate
    @Column(name = "CREATED_DATE", nullable = false, updatable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm a")
    public java.util.Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(java.util.Date createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @LastModifiedBy
    @Column(name = "LAST_MODIFIED_BY", nullable = false, length = 50)
    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    @Basic
    @LastModifiedDate
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm a")
    public java.util.Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(java.util.Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "ACCOUNT_TYPE_ID", insertable = false, updatable = false)
    public AccountType getAccountType() {
        return accountType;
    }

    public void setAccountType(AccountType accountType) {
        this.accountType = accountType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Account account = (Account) o;

        if (accountId != account.accountId) return false;
        if (accountTypeId != account.accountTypeId) return false;
        if (interestCalMethod != account.interestCalMethod) return false;
        if (mobileBankAvailability != account.mobileBankAvailability) return false;
        if (onlineBankAvailability != account.onlineBankAvailability) return false;
        if (passbookAvailability != account.passbookAvailability) return false;
        if (status != account.status) return false;
        if (createdBy != null ? !createdBy.equals(account.createdBy) : account.createdBy != null) return false;
        if (createdDate != null ? !createdDate.equals(account.createdDate) : account.createdDate != null) return false;
        if (lastModifiedBy != null ? !lastModifiedBy.equals(account.lastModifiedBy) : account.lastModifiedBy != null)
            return false;
        if (lastModifiedDate != null ? !lastModifiedDate.equals(account.lastModifiedDate) : account.lastModifiedDate != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = accountId;
        result = 31 * result + accountTypeId;
        result = 31 * result + interestCalMethod;
        result = 31 * result + (int) mobileBankAvailability;
        result = 31 * result + (int) onlineBankAvailability;
        result = 31 * result + passbookAvailability;
        result = 31 * result + status;
        result = 31 * result + (createdBy != null ? createdBy.hashCode() : 0);
        result = 31 * result + (createdDate != null ? createdDate.hashCode() : 0);
        result = 31 * result + (lastModifiedBy != null ? lastModifiedBy.hashCode() : 0);
        result = 31 * result + (lastModifiedDate != null ? lastModifiedDate.hashCode() : 0);
        return result;
    }
}
