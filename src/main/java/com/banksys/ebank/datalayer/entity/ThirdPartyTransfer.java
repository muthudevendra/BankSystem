package com.banksys.ebank.datalayer.entity;

import com.banksys.util.enums.MasterDataStatus;
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
 * Created by Lakshitha on 30-Jun-17.
 *
 */
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(name = "third_party_transfer")
public class ThirdPartyTransfer {
    private Integer thirdPartyAccountTransferId;
    private Integer fromAccountId;
    private Double amount;
    private Double accountBalance;
    private String description;
    private Date transferDate;
    private Integer status;
    private Integer transferStatus;
    private String receiverName;
    private String bank;
    private String branch;
    private String accountNo;
    private String createdBy;
    private Date createdDate;
    private String lastModifiedBy;
    private Date lastModifiedDate;

    private CustomerAccount fromAccount;
    private Bank targetBank;

    private String statusDescription;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "THIRD_PARTY_ACCOUNT_TRANSFER_ID")
    public Integer getThirdPartyAccountTransferId() {
        return thirdPartyAccountTransferId;
    }

    public void setThirdPartyAccountTransferId(Integer thirdPartyAccountTransferId) {
        this.thirdPartyAccountTransferId = thirdPartyAccountTransferId;
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
    @Column(name = "AMOUNT")
    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    @Basic
    @Column(name = "ACCOUNT_BALANCE")
    public Double getAccountBalance() {
        return accountBalance;
    }

    public void setAccountBalance(Double accountBalance) {
        this.accountBalance = accountBalance;
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
    @Column(name = "STATUS")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
        if(status != null){
            this.setStatusDescription(MasterDataStatus.findOne(status).getStatus());
        }
    }

    @Basic
    @Column(name = "TRANSFER_STATUS")
    public Integer getTransferStatus() {
        return transferStatus;
    }

    public void setTransferStatus(Integer transferStatus) {
        this.transferStatus = transferStatus;
    }

    @Basic
    @Column(name = "RECEIVER_NAME")
    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }

    @Basic
    @Column(name = "BANK")
    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    @Basic
    @Column(name = "BRANCH")
    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    @Basic
    @Column(name = "ACCOUNT_NO")
    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
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
    @JoinColumn(name = "BANK", insertable = false, updatable = false)
    public Bank getTargetBank() {
        return targetBank;
    }

    public void setTargetBank(Bank targetBank) {
        this.targetBank = targetBank;
    }

    @Transient
    public String getStatusDescription() {
        return statusDescription;
    }

    public void setStatusDescription(String statusDescription) {
        this.statusDescription = statusDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ThirdPartyTransfer that = (ThirdPartyTransfer) o;
        return Objects.equals(thirdPartyAccountTransferId, that.thirdPartyAccountTransferId) &&
                Objects.equals(fromAccountId, that.fromAccountId) &&
                Objects.equals(amount, that.amount) &&
                Objects.equals(accountBalance, that.accountBalance) &&
                Objects.equals(description, that.description) &&
                Objects.equals(transferDate, that.transferDate) &&
                Objects.equals(status, that.status) &&
                Objects.equals(transferStatus, that.transferStatus) &&
                Objects.equals(receiverName, that.receiverName) &&
                Objects.equals(bank, that.bank) &&
                Objects.equals(branch, that.branch) &&
                Objects.equals(accountNo, that.accountNo) &&
                Objects.equals(fromAccount, that.fromAccount) &&
                Objects.equals(targetBank, that.targetBank) &&
                Objects.equals(statusDescription, that.statusDescription);
    }

    @Override
    public int hashCode() {
        return Objects.hash(thirdPartyAccountTransferId, fromAccountId, amount, accountBalance, description, transferDate, status, transferStatus, receiverName, bank, branch, accountNo, fromAccount, targetBank, statusDescription);
    }
}
