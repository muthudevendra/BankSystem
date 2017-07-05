package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
public enum Currency {
    LKR(0, "LKR", 1.0),
    USD(1, "USD", 154.3),
    EURO(2, "EURO", 174.27);

    private final Integer currencySeq;
    private final String currency;
    private final Double rate;

    Currency(Integer currencySeq, String currency, Double rate) {
        this.currencySeq = currencySeq;
        this.currency = currency;
        this.rate = rate;
    }

    public Integer getCurrencySeq() {
        return currencySeq;
    }

    public String getCurrency() {
        return currency;
    }

    public Double getRate() {
        return rate;
    }

    public static Currency findOne(Integer currencySeq){
        return Arrays.stream(Currency.values())
                .filter(i -> i.getCurrencySeq().equals(currencySeq))
                .findFirst()
                .orElse(null);
    }
}
