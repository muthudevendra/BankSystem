package com.banksys.util.enums;

/**
 * Created by lakshithar on 6/27/2017.
 *
 */
public enum InterestMethod {
    ANNUALLY(0, "Annually"),
    MONTHLY(1, "Monthly");

    private final Integer interestMethodSeq;
    private final String interestMethod;

    InterestMethod(Integer interestMethodSeq, String interestMethod) {
        this.interestMethodSeq = interestMethodSeq;
        this.interestMethod = interestMethod;
    }

    public Integer getInterestMethodSeq() {
        return interestMethodSeq;
    }

    public String getInterestMethod() {
        return interestMethod;
    }
}
