package com.banksys.util;

import org.springframework.data.auditing.DateTimeProvider;

import java.util.Calendar;

/**
 * Created by lakshithar on 6/21/2017.
 *
 */
public class DateAuditingProvider implements DateTimeProvider {
    @Override
    public Calendar getNow() {
        return Calendar.getInstance();
    }
}
