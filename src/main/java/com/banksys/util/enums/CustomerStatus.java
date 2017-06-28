package com.banksys.util.enums;

/**
 * Created by Oshada on 6/27/2017.
 */
public enum CustomerStatus {

    ACTIVE(0,"active"),
    INACTIVE( 1,"inactive");

    private final Integer CustomerstatusSeq;
    private final String Customerstatus;

    CustomerStatus(Integer customerstatusSeq, String customerstatus) {
        CustomerstatusSeq = customerstatusSeq;
        Customerstatus = customerstatus;
    }

    public Integer getCustomerstatusSeq() {
        return CustomerstatusSeq;
    }

    public String getCustomerstatus() {
        return Customerstatus;
    }
}
