package com.banksys.admin.datalayer.entity.auxilary;

/**
 * Created by lakshithar on 6/27/2017.
 *
 */
public class CustomerAux {
    private String nic;
    private String passportNo;
    private String lastName;

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getPassportNo() {
        return passportNo;
    }

    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
