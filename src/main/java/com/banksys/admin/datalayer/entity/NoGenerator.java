package com.banksys.admin.datalayer.entity;

import javax.persistence.*;
import java.util.Objects;

/**
 * Created by lakshithar on 6/28/2017.
 *
 */
@Entity
@Table(name = "no_generator")
public class NoGenerator {
    private Integer noGenId;
    private String name;
    private Integer previousNo;
    private Integer nextNo;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "NO_GEN_ID")
    public Integer getNoGenId() {
        return noGenId;
    }

    public void setNoGenId(Integer noGenId) {
        this.noGenId = noGenId;
    }

    @Basic
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "PREVIOUS_NO")
    public Integer getPreviousNo() {
        return previousNo;
    }

    public void setPreviousNo(Integer previousNo) {
        this.previousNo = previousNo;
    }

    @Basic
    @Column(name = "NEXT_NO")
    public Integer getNextNo() {
        return nextNo;
    }

    public void setNextNo(Integer nextNo) {
        this.nextNo = nextNo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        NoGenerator that = (NoGenerator) o;
        return Objects.equals(noGenId, that.noGenId) &&
                Objects.equals(previousNo, that.previousNo) &&
                Objects.equals(nextNo, that.nextNo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(noGenId, previousNo, nextNo);
    }
}
