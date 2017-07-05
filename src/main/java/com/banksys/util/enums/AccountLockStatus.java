package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by Lakshitha on 05-Jul-17.
 *
 */
public enum AccountLockStatus {
    LOCKED(0, "Locked"),
    UNLOCKED(1, "Unlocked");

    private final Integer accountLockStatusSeq;
    private final String accountLockStatus;

    AccountLockStatus(Integer accountLockStatusSeq, String accountLockStatus) {
        this.accountLockStatusSeq = accountLockStatusSeq;
        this.accountLockStatus = accountLockStatus;
    }

    public Integer getAccountLockStatusSeq() {
        return accountLockStatusSeq;
    }

    public String getAccountLockStatus() {
        return accountLockStatus;
    }
}
