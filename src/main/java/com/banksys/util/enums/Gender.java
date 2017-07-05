package com.banksys.util.enums;

import java.util.Arrays;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
public enum Gender {
    MALE(0, "Male"),
    FEMALE(1, "Female");

    private final Integer genderSeq;
    private final String gender;

    Gender(Integer genderSeq, String gender) {
        this.genderSeq = genderSeq;
        this.gender = gender;
    }

    public Integer getGenderSeq() {
        return genderSeq;
    }

    public String getGender() {
        return gender;
    }

    public static Gender findOne(Integer genderSeq){
        return Arrays.stream(Gender.values())
                .filter(i -> i.getGenderSeq().equals(genderSeq))
                .findFirst()
                .orElse(null);
    }
}
