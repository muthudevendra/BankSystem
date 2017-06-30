package com.banksys.ebank.datalayer.entity.auxilary;

import com.banksys.util.enums.TransferType;

import java.util.Date;

/**
 * Created by lakshithar on 6/29/2017.
 *
 */
public class AccountTransferAux {
    private Date transferDate;
    private String description;
    private Integer transferType;
    private String transferTypeDescription;
    private Double withdrawAmount;
    private Double depositAmount;
    private Double availableBalance;

    public Date getTransferDate() {
        return transferDate;
    }

    public void setTransferDate(Date transferDate) {
        this.transferDate = transferDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getTransferType() {
        return transferType;
    }

    public void setTransferType(Integer transferType) {
        this.transferType = transferType;
        if(transferType != null){
            this.setTransferTypeDescription(TransferType.findOne(transferType).getTransferType());
        }
    }

    public String getTransferTypeDescription() {
        return transferTypeDescription;
    }

    public void setTransferTypeDescription(String transferTypeDescription) {
        this.transferTypeDescription = transferTypeDescription;
    }

    public Double getWithdrawAmount() {
        return withdrawAmount;
    }

    public void setWithdrawAmount(Double withdrawAmount) {
        this.withdrawAmount = withdrawAmount;
    }

    public Double getDepositAmount() {
        return depositAmount;
    }

    public void setDepositAmount(Double depositAmount) {
        this.depositAmount = depositAmount;
    }

    public Double getAvailableBalance() {
        return availableBalance;
    }

    public void setAvailableBalance(Double availableBalance) {
        this.availableBalance = availableBalance;
    }
}
