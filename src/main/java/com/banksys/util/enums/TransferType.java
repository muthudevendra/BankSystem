package com.banksys.util.enums;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
public enum TransferType {
    OWN(0, "Own Account"),
    THIRD_PARTY(1, "Third Party Account"),
    SCHEDULED(2, "Scheduled");

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
}
