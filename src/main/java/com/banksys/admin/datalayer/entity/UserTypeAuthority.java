package com.banksys.admin.datalayer.entity;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * Created by lakshithar on 6/20/2017.
 *
 */
@Entity
@EntityListeners(AuditingEntityListener.class)
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
    @GeneratedValue(strategy=GenerationType.IDENTITY)
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
    @CreatedBy
    @Column(name = "CREATED_BY" ,nullable = false, updatable = false)
    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Basic
    @CreatedDate
    @Column(name = "CREATED_DATE" ,nullable = false, updatable = false)
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @LastModifiedBy
    @Column(name = "LAST_MODIFIED_BY" ,nullable = false)
    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    @Basic
    @LastModifiedDate
    @Column(name = "LAST_MODIFIED_DATE" ,nullable = false)
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
