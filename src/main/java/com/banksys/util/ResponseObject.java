package com.banksys.util;

import com.sun.org.apache.xpath.internal.operations.Bool;

import java.io.Serializable;

/**
 * Created by lakshithar on 6/23/2017.
 *
 */
public class ResponseObject implements Serializable {
    private Object object;
    private String message;
    private Boolean status;

    public ResponseObject(String message, Boolean status){
        this.message = message;
        this.status = status;
    }

    public ResponseObject(Object object, Boolean status){
        this.object = object;
        this.status = status;
    }

    public ResponseObject() {
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
}
