package com.banksys.ebank.datalayer.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

/**
 * Created by lakshithar on 6/20/2017.
 */
@Entity
@Table(name = "user_type")
public class UserType {
    private Integer userTypeId;
    private Integer userType;
    private String description;
    private Integer status;
    private String createdBy;
    private Date createdDate;
    private String lastModifiedBy;
    private Date lastModifiedDate;

    @Id
    @Column(name = "USER_TYPE_ID")
    public Integer getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    @Basic
    @Column(name = "USER_TYPE")
    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    @Basic
    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "STATUS")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @Column(name = "CREATED_BY")
    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Basic
    @Column(name = "CREATED_DATE")
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @Column(name = "LAST_MODIFIED_BY")
    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    @Basic
    @Column(name = "LAST_MODIFIED_DATE")
    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserType userType1 = (UserType) o;
        return Objects.equals(userTypeId, userType1.userTypeId) &&
                Objects.equals(userType, userType1.userType) &&
                Objects.equals(description, userType1.description) &&
                Objects.equals(status, userType1.status) &&
                Objects.equals(createdBy, userType1.createdBy) &&
                Objects.equals(createdDate, userType1.createdDate) &&
                Objects.equals(lastModifiedBy, userType1.lastModifiedBy) &&
                Objects.equals(lastModifiedDate, userType1.lastModifiedDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userTypeId, userType, description, status, createdBy, createdDate, lastModifiedBy, lastModifiedDate);
    }
}
