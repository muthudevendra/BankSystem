package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
public enum TransferType {
    OWN(0, "Own Account"),
    THIRD_PARTY(1, "Third Party Account"),
    SCHEDULED(2, "Scheduled"),
    PAYMENT(3, "Payment");

    private Integer transferTypeSeq;
    private String transferType;

    TransferType(Integer transferTypeSeq, String transferType){
        this.transferTypeSeq = transferTypeSeq;
        this.transferType = transferType;
    }

    public Integer getTransferTypeSeq() {
        return transferTypeSeq;
    }

    public String getTransferType() {
        return transferType;
    }

    public static TransferType findOne(Integer transferTypeSeq){
        return Arrays.stream(TransferType.values())
                .filter(i -> i.getTransferTypeSeq().equals(transferTypeSeq))
                .findFirst()
                .orElse(null);
    }
}
