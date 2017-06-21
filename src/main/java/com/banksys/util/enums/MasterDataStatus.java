package com.banksys.util.enums;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
public enum MasterDataStatus {
    DELETED(0, "Deleted"),
    OPEN(1, "Open");

    private final Integer statusSeq;
    private final String status;

    MasterDataStatus(Integer statusSeq, String status) {
        this.statusSeq = statusSeq;
        this.status = status;
    }

    public Integer getStatusSeq() {
        return statusSeq;
    }

    public String getStatus() {
        return status;
    }
}
