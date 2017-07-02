package com.banksys.admin.datalayer.entity.auxilary;

/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */
public class CustomerAccountAux {
    private Integer accountType;
    private Integer interestMethod;
    private String customer;

    public Integer getAccountType() {
        return accountType;
    }

    public void setAccountType(Integer accountType) {
        this.accountType = accountType;
    }

    public Integer getInterestMethod() {
        return interestMethod;
    }

    public void setInterestMethod(Integer interestMethod) {
        this.interestMethod = interestMethod;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }
}
