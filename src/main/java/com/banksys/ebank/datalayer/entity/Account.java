package com.banksys.ebank.datalayer.entity;

import com.banksys.util.enums.InterestMethod;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Entity
@Table(name = "account")
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

    private String interestCalMethodDescription;

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
        if(interestCalMethod != null){
            this.setInterestCalMethodDescription(InterestMethod.findOne(interestCalMethod).getInterestMethod());
        }
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

    @Transient
    public String getInterestCalMethodDescription() {
        return interestCalMethodDescription;
    }

    public void setInterestCalMethodDescription(String interestCalMethodDescription) {
        this.interestCalMethodDescription = interestCalMethodDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Account account = (Account) o;
        return Objects.equals(accountId, account.accountId) &&
                Objects.equals(accountTypeId, account.accountTypeId) &&
                Objects.equals(interestCalMethod, account.interestCalMethod) &&
                Objects.equals(mobileBankAvailability, account.mobileBankAvailability) &&
                Objects.equals(onlineBankAvailability, account.onlineBankAvailability) &&
                Objects.equals(passbookAvailability, account.passbookAvailability) &&
                Objects.equals(status, account.status) &&
                Objects.equals(accountType, account.accountType);
    }

    @Override
    public int hashCode() {
        return Objects.hash(accountId, accountTypeId, interestCalMethod, mobileBankAvailability, onlineBankAvailability, passbookAvailability, status, accountType);
    }
}
