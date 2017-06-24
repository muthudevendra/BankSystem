package com.banksys.ebank.datalayer.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Entity
@Table(name = "customer")
@EntityListeners(AuditingEntityListener.class)
public class Customer {
    private Integer customerId;
    private String nic;
    private Date nicIssueDate;
    private String passportNo;
    private String fullName;
    private String firstName;
    private String middleName;
    private String lastName;
    private Integer addressBookId;
    private Integer userId;
    private Date dateOfBirth;
    private Integer gender;
    private Double monthlyIncome;
    private String occupation;
    private Byte incomeTaxPayStatus;
    private Integer status;
    private Date createdDate;
    private String createdBy;
    private Date lastModifiedDate;
    private String lastModifiedBy;

    private AddressBook addressBook;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "CUSTOMER_ID")
    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    @Basic
    @Column(name = "NIC")
    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    @Basic
    @Column(name = "NIC_ISSUE_DATE")
    public Date getNicIssueDate() {
        return nicIssueDate;
    }

    public void setNicIssueDate(Date nicIssueDate) {
        this.nicIssueDate = nicIssueDate;
    }

    @Basic
    @Column(name = "PASSPORT_NO")
    public String getPassportNo() {
        return passportNo;
    }

    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }

    @Basic
    @Column(name = "FULL_NAME")
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    @Basic
    @Column(name = "FIRST_NAME")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "MIDDLE_NAME")
    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    @Basic
    @Column(name = "LAST_NAME")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "ADDRESS_BOOK_ID", insertable = false, updatable = false)
    public Integer getAddressBookId() {
        return addressBookId;
    }

    public void setAddressBookId(Integer addressBookId) {
        this.addressBookId = addressBookId;
    }

    @Basic
    @Column(name = "USER_ID")
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "DATE_OF_BIRTH")
    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    @Basic
    @Column(name = "GENDER")
    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "MONTHLY_INCOME")
    public Double getMonthlyIncome() {
        return monthlyIncome;
    }

    public void setMonthlyIncome(Double monthlyIncome) {
        this.monthlyIncome = monthlyIncome;
    }

    @Basic
    @Column(name = "OCCUPATION")
    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    @Basic
    @Column(name = "INCOME_TAX_PAY_STATUS")
    public Byte getIncomeTaxPayStatus() {
        return incomeTaxPayStatus;
    }

    public void setIncomeTaxPayStatus(Byte incomeTaxPayStatus) {
        this.incomeTaxPayStatus = incomeTaxPayStatus;
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
    @Column(name = "CREATED_BY", nullable = false, length = 50, updatable = false)
    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Basic
    @CreatedDate
    @Column(name = "CREATED_DATE", nullable = false, updatable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm a")
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @LastModifiedBy
    @Column(name = "LAST_MODIFIED_BY", nullable = false, length = 50)
    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    @Basic
    @LastModifiedDate
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm a")
    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "ADDRESS_BOOK_ID")
    public AddressBook getAddressBook() {
        return addressBook;
    }

    public void setAddressBook(AddressBook addressBook) {
        this.addressBook = addressBook;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Customer customer = (Customer) o;
        return customerId == customer.customerId &&
                addressBookId == customer.addressBookId &&
                userId == customer.userId &&
                gender == customer.gender &&
                status == customer.status &&
                Objects.equals(nic, customer.nic) &&
                Objects.equals(nicIssueDate, customer.nicIssueDate) &&
                Objects.equals(passportNo, customer.passportNo) &&
                Objects.equals(fullName, customer.fullName) &&
                Objects.equals(firstName, customer.firstName) &&
                Objects.equals(middleName, customer.middleName) &&
                Objects.equals(lastName, customer.lastName) &&
                Objects.equals(dateOfBirth, customer.dateOfBirth) &&
                Objects.equals(monthlyIncome, customer.monthlyIncome) &&
                Objects.equals(occupation, customer.occupation) &&
                Objects.equals(incomeTaxPayStatus, customer.incomeTaxPayStatus) &&
                Objects.equals(addressBook, customer.addressBook);
    }

    @Override
    public int hashCode() {
        return Objects.hash(customerId, nic, nicIssueDate, passportNo, fullName, firstName, middleName, lastName, addressBookId, userId, dateOfBirth, gender, monthlyIncome, occupation, incomeTaxPayStatus, status, addressBook);
    }
}
