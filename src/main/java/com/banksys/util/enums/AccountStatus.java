package com.banksys.util.enums;

/**
 * Created by Oshada on 6/27/2017.
 *
 */
public enum AccountStatus {
    ACTIVE(0,"Active"),
    INACTIVE( 1,"Inactive");

    private final Integer AccountstatusSeq;
    private final String Accountstatus;

    AccountStatus(Integer accountstatusSeq, String accountstatus) {
        AccountstatusSeq = accountstatusSeq;
        Accountstatus = accountstatus;
    }

    public Integer getAccountstatusSeq() {
        return AccountstatusSeq;
    }

    public String getAccountstatus() {
        return Accountstatus;
    }

    public String getStatus() {
        return status;
    }
}
