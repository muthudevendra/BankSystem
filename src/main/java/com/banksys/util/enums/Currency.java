package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
public enum Currency {
    LKR(0, "LKR"),
    USD(1, "USD");

    private final Integer currencySeq;
    private final String currency;

    Currency(Integer currencySeq, String currency) {
        this.currencySeq = currencySeq;
        this.currency = currency;
    }

    public Integer getCurrencySeq() {
        return currencySeq;
    }

    public String getCurrency() {
        return currency;
    }

    public static Currency findOne(Integer currencySeq){
        return Arrays.stream(Currency.values())
                .filter(i -> i.getCurrencySeq().equals(currencySeq))
                .findFirst()
                .orElse(null);
    }
}
