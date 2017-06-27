package com.banksys.util.enums;

/**
 * Created by Oshada on 6/27/2017.
 */
public enum AccountStatus {
    ACTIVE(0,"active"),
    INACTIVE( 1,"inactive");

    private final Integer statusSeq;
    private final String status;

    AccountStatus(Integer statusSeq, String status) {
        this.statusSeq = statusSeq;
        this.status = status;
    }

    public Integer getStatusSeq() {
        return statusSeq;
    }
}
