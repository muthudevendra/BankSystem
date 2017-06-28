package com.banksys.ebank.datalayer.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
@Entity
@Table(name = "own_account_transfer")
public class OwnAccountTransfer {
    private Integer ownAccountTransferId;
    private Integer fromAccountId;
    private Integer toAccountId;
    private Double amount;
    private String description;
    private Date transferDate;
    private Date createdDate;
    private String createdBy;
    private Date lastModifiedDate;
    private String lastModifiedBy;

    private CustomerAccount fromAccount;
    private CustomerAccount toAccount;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "OWN_ACCOUNT_TRANSFER_ID")
    public Integer getOwnAccountTransferId() {
        return ownAccountTransferId;
    }

    public void setOwnAccountTransferId(Integer ownAccountTransferId) {
        this.ownAccountTransferId = ownAccountTransferId;
    }

    @Basic
    @Column(name = "FROM_ACCOUNT_ID")
    public Integer getFromAccountId() {
        return fromAccountId;
    }

    public void setFromAccountId(Integer fromAccountId) {
        this.fromAccountId = fromAccountId;
    }

    @Basic
    @Column(name = "TO_ACCOUNT_ID")
    public Integer getToAccountId() {
        return toAccountId;
    }

    public void setToAccountId(Integer toAccountId) {
        this.toAccountId = toAccountId;
    }

    @Basic
    @Column(name = "AMOUNT")
    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    @Basic
    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "TRANSFER_DATE")
    public Date getTransferDate() {
        return transferDate;
    }

    public void setTransferDate(Date transferDate) {
        this.transferDate = transferDate;
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
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
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
    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FROM_ACCOUNT_ID", insertable = false, updatable = false)
    public CustomerAccount getFromAccount() {
        return fromAccount;
    }

    public void setFromAccount(CustomerAccount fromAccount) {
        this.fromAccount = fromAccount;
    }

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TO_ACCOUNT_ID", insertable = false, updatable = false)
    public CustomerAccount getToAccount() {
        return toAccount;
    }

    public void setToAccount(CustomerAccount toAccount) {
        this.toAccount = toAccount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OwnAccountTransfer that = (OwnAccountTransfer) o;
        return Objects.equals(ownAccountTransferId, that.ownAccountTransferId) &&
                Objects.equals(fromAccountId, that.fromAccountId) &&
                Objects.equals(toAccountId, that.toAccountId) &&
                Objects.equals(amount, that.amount) &&
                Objects.equals(transferDate, that.transferDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ownAccountTransferId, fromAccountId, toAccountId, amount, transferDate);
    }
}
