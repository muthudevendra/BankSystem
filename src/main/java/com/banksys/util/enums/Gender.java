package com.banksys.util.enums;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
public enum Gender {
    MALE(0, "Deleted"),
    FEMALE(1, "Open");

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
}
