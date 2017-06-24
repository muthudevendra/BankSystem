package com.banksys.ebank.datalayer.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
@Entity
public class Customer {
    private int customerId;
    private String nic;
    private Date nicIssueDate;
    private String passportNo;
    private String fullName;
    private String firstName;
    private String middleName;
    private String lastName;
    private int addressBookId;
    private int userId;
    private Date dateOfBirth;
    private int gender;
    private Double monthlyIncome;
    private String occupation;
    private Byte incomeTaxPayStatus;
    private int status;
    private Date createdDate;
    private String createdBy;
    private Date lastModifiedDate;
    private String lastModifiedBy;

    private AddressBook addressBook;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "CUSTOMER_ID")
    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
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
    @Column(name = "ADDRESS_BOOK_ID")
    public int getAddressBookId() {
        return addressBookId;
    }

    public void setAddressBookId(int addressBookId) {
        this.addressBookId = addressBookId;
    }

    @Basic
    @Column(name = "USER_ID")
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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
    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
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
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
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

    @OneToOne(fetch = FetchType.LAZY)
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

        if (customerId != customer.customerId) return false;
        if (addressBookId != customer.addressBookId) return false;
        if (userId != customer.userId) return false;
        if (gender != customer.gender) return false;
        if (status != customer.status) return false;
        if (nic != null ? !nic.equals(customer.nic) : customer.nic != null) return false;
        if (nicIssueDate != null ? !nicIssueDate.equals(customer.nicIssueDate) : customer.nicIssueDate != null)
            return false;
        if (passportNo != null ? !passportNo.equals(customer.passportNo) : customer.passportNo != null) return false;
        if (fullName != null ? !fullName.equals(customer.fullName) : customer.fullName != null) return false;
        if (firstName != null ? !firstName.equals(customer.firstName) : customer.firstName != null) return false;
        if (middleName != null ? !middleName.equals(customer.middleName) : customer.middleName != null) return false;
        if (lastName != null ? !lastName.equals(customer.lastName) : customer.lastName != null) return false;
        if (dateOfBirth != null ? !dateOfBirth.equals(customer.dateOfBirth) : customer.dateOfBirth != null)
            return false;
        if (monthlyIncome != null ? !monthlyIncome.equals(customer.monthlyIncome) : customer.monthlyIncome != null)
            return false;
        if (occupation != null ? !occupation.equals(customer.occupation) : customer.occupation != null) return false;
        if (incomeTaxPayStatus != null ? !incomeTaxPayStatus.equals(customer.incomeTaxPayStatus) : customer.incomeTaxPayStatus != null)
            return false;
        if (createdDate != null ? !createdDate.equals(customer.createdDate) : customer.createdDate != null)
            return false;
        if (createdBy != null ? !createdBy.equals(customer.createdBy) : customer.createdBy != null) return false;
        if (lastModifiedDate != null ? !lastModifiedDate.equals(customer.lastModifiedDate) : customer.lastModifiedDate != null)
            return false;
        if (lastModifiedBy != null ? !lastModifiedBy.equals(customer.lastModifiedBy) : customer.lastModifiedBy != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = customerId;
        result = 31 * result + (nic != null ? nic.hashCode() : 0);
        result = 31 * result + (nicIssueDate != null ? nicIssueDate.hashCode() : 0);
        result = 31 * result + (passportNo != null ? passportNo.hashCode() : 0);
        result = 31 * result + (fullName != null ? fullName.hashCode() : 0);
        result = 31 * result + (firstName != null ? firstName.hashCode() : 0);
        result = 31 * result + (middleName != null ? middleName.hashCode() : 0);
        result = 31 * result + (lastName != null ? lastName.hashCode() : 0);
        result = 31 * result + addressBookId;
        result = 31 * result + userId;
        result = 31 * result + (dateOfBirth != null ? dateOfBirth.hashCode() : 0);
        result = 31 * result + gender;
        result = 31 * result + (monthlyIncome != null ? monthlyIncome.hashCode() : 0);
        result = 31 * result + (occupation != null ? occupation.hashCode() : 0);
        result = 31 * result + (incomeTaxPayStatus != null ? incomeTaxPayStatus.hashCode() : 0);
        result = 31 * result + status;
        result = 31 * result + (createdDate != null ? createdDate.hashCode() : 0);
        result = 31 * result + (createdBy != null ? createdBy.hashCode() : 0);
        result = 31 * result + (lastModifiedDate != null ? lastModifiedDate.hashCode() : 0);
        result = 31 * result + (lastModifiedBy != null ? lastModifiedBy.hashCode() : 0);
        return result;
    }
}
