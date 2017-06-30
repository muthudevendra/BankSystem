package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by lakshithar on 6/30/2017.
 *
 */
public enum TransferStatus {
    SENT(0, "Sent"),
    SCHEDULED(1, "Scheduled");

    private final Integer transferStatusSeq;
    private final String transferStatus;

    TransferStatus(Integer transferStatusSeq, String transferStatus){
        this.transferStatusSeq = transferStatusSeq;
        this.transferStatus = transferStatus;
    }

    public Integer getTransferStatusSeq() {
        return transferStatusSeq;
    }

    public String getTransferStatus() {
        return transferStatus;
    }

    public static TransferStatus findOne(Integer transferStatusSeq){
        return Arrays.stream(TransferStatus.values())
                .filter(i -> i.getTransferStatusSeq().equals(transferStatusSeq))
                .findFirst()
                .orElse(null);
    }
}
