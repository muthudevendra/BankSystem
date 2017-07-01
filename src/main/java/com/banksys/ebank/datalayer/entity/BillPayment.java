package com.banksys.ebank.datalayer.entity;

import com.banksys.util.enums.PaymentType;
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
 * Created by lakshithar on 7/1/2017.
 *
 */
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(name = "bill_payment")
public class BillPayment {
    private Integer billPaymentId;
    private Integer fromAccountId;
    private Integer paymentType;
    private String referenceNo;
    private Date paymentDate;
    private Double amount;
    private Double accountBalance;
    private Integer status;
    private Integer transferStatus;
    private Date createdDate;
    private String createdBy;
    private Date lastModifiedDate;
    private String lastModifiedBy;

    private CustomerAccount fromAccount;

    private String paymentTypeDescription;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "BILL_PAYMENT_ID")
    public Integer getBillPaymentId() {
        return billPaymentId;
    }

    public void setBillPaymentId(Integer billPaymentId) {
        this.billPaymentId = billPaymentId;
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
    @Column(name = "PAYMENT_TYPE")
    public Integer getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(Integer paymentType) {
        this.paymentType = paymentType;
        if(paymentType != null){
            this.setPaymentTypeDescription(PaymentType.findOne(paymentType).getPaymentType());
        }
    }

    @Basic
    @Column(name = "REFERENCE_NO")
    public String getReferenceNo() {
        return referenceNo;
    }

    public void setReferenceNo(String referenceNo) {
        this.referenceNo = referenceNo;
    }

    @Basic
    @Column(name = "PAYMENT_DATE")
    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
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
    @Column(name = "STATUS")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FROM_ACCOUNT_ID", insertable = false, updatable = false)
    public CustomerAccount getFromAccount() {
        return fromAccount;
    }

    public void setFromAccount(CustomerAccount fromAccount) {
        this.fromAccount = fromAccount;
    }

    @Transient
    public String getPaymentTypeDescription() {
        return paymentTypeDescription;
    }

    public void setPaymentTypeDescription(String paymentTypeDescription) {
        this.paymentTypeDescription = paymentTypeDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BillPayment that = (BillPayment) o;
        return Objects.equals(billPaymentId, that.billPaymentId) &&
                Objects.equals(fromAccountId, that.fromAccountId) &&
                Objects.equals(paymentType, that.paymentType) &&
                Objects.equals(referenceNo, that.referenceNo) &&
                Objects.equals(paymentDate, that.paymentDate) &&
                Objects.equals(amount, that.amount) &&
                Objects.equals(accountBalance, that.accountBalance) &&
                Objects.equals(status, that.status) &&
                Objects.equals(fromAccount, that.fromAccount);
    }

    @Override
    public int hashCode() {
        return Objects.hash(billPaymentId, fromAccountId, paymentType, referenceNo, paymentDate, amount, accountBalance, status, fromAccount);
    }
}
