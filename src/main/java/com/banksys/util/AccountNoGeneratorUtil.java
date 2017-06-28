package com.banksys.util;

import java.time.LocalDate;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
public class AccountNoGeneratorUtil {
    public static String getAccountNo(Integer value){
        LocalDate localDate = LocalDate.now();
        Integer year = localDate.getYear();
        Integer month = localDate.getMonthValue();
        Integer day = localDate.getDayOfMonth();
        return year.toString()
                + String.format("%02d",month)
                + day.toString()
                + String.format("%06d", value);
    }
}
