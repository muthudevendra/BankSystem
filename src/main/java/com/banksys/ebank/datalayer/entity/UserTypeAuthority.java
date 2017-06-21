package com.banksys.ebank.datalayer.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

/**
 * Created by lakshithar on 6/20/2017.
 *
 */
@Entity
@Table(name = "user_type_authority")
public class UserTypeAuthority {
    private Integer userTypeAuthorityId;
    private Integer userTypeId;
    private Integer authorityId;
    private Integer status;
    private String createdBy;
    private Date createdDate;
    private String lastModifiedBy;
    private Date lastModifiedDate;

    @Id
    @Column(name = "USER_TYPE_AUTHORITY_ID")
    public Integer getUserTypeAuthorityId() {
        return userTypeAuthorityId;
    }

    public void setUserTypeAuthorityId(Integer userTypeAuthorityId) {
        this.userTypeAuthorityId = userTypeAuthorityId;
    }

    @Basic
    @Column(name = "USER_TYPE_ID")
    public Integer getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    @Basic
    @Column(name = "AUTHORITY_ID")
    public Integer getAuthorityId() {
        return authorityId;
    }

    public void setAuthorityId(Integer authorityId) {
        this.authorityId = authorityId;
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
        UserTypeAuthority that = (UserTypeAuthority) o;
        return Objects.equals(userTypeAuthorityId, that.userTypeAuthorityId) &&
                Objects.equals(userTypeId, that.userTypeId) &&
                Objects.equals(authorityId, that.authorityId) &&
                Objects.equals(status, that.status) &&
                Objects.equals(createdBy, that.createdBy) &&
                Objects.equals(createdDate, that.createdDate) &&
                Objects.equals(lastModifiedBy, that.lastModifiedBy) &&
                Objects.equals(lastModifiedDate, that.lastModifiedDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userTypeAuthorityId, userTypeId, authorityId, status, createdBy, createdDate, lastModifiedBy, lastModifiedDate);
    }
}
