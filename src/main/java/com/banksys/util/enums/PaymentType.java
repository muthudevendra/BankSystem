package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
public enum PaymentType {
    DIALOG(0, "Dialog"),
    MOBITEL(1, "Mobitel"),
    TELECOM(2, "Sri Lanka Telecom"),
    CUSTOMS(3, "Sri Lanka Customs");

    private final Integer paymentTypeSeq;
    private final String paymentType;

    PaymentType(Integer paymentTypeSeq, String paymentType){
        this.paymentTypeSeq = paymentTypeSeq;
        this.paymentType = paymentType;
    }

    public Integer getPaymentTypeSeq() {
        return paymentTypeSeq;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public static PaymentType findOne(Integer paymentTypeSeq){
        return Arrays.stream(PaymentType.values())
                .filter(i -> i.getPaymentTypeSeq().equals(paymentTypeSeq))
                .findFirst()
                .orElse(null);
    }
}
