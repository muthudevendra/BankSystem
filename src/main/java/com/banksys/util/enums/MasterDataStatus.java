package com.banksys.util.enums;

import java.util.Arrays;

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

    public static MasterDataStatus findOne(Integer statusSeq){
        return Arrays.stream(MasterDataStatus.values())
                .filter(i -> i.getStatusSeq().equals(statusSeq))
                .findFirst()
                .orElse(null);
    }
}
