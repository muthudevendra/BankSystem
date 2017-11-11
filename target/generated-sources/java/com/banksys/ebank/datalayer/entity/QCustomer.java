package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCustomer is a Querydsl query type for Customer
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCustomer extends EntityPathBase<Customer> {

    private static final long serialVersionUID = -1107034165L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QCustomer customer = new QCustomer("customer");

    public final QAddressBook addressBook;

    public final NumberPath<Integer> addressBookId = createNumber("addressBookId", Integer.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final NumberPath<Integer> customerId = createNumber("customerId", Integer.class);

    public final DateTimePath<java.util.Date> dateOfBirth = createDateTime("dateOfBirth", java.util.Date.class);

    public final StringPath firstName = createString("firstName");

    public final StringPath fullName = createString("fullName");

    public final NumberPath<Integer> gender = createNumber("gender", Integer.class);

    public final NumberPath<Integer> incomeTaxPayStatus = createNumber("incomeTaxPayStatus", Integer.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final StringPath lastName = createString("lastName");

    public final StringPath middleName = createString("middleName");

    public final NumberPath<Double> monthlyIncome = createNumber("monthlyIncome", Double.class);

    public final StringPath nic = createString("nic");

    public final DateTimePath<java.util.Date> nicIssueDate = createDateTime("nicIssueDate", java.util.Date.class);

    public final StringPath occupation = createString("occupation");

    public final StringPath passportNo = createString("passportNo");

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final com.banksys.admin.datalayer.entity.QUser user;

    public final NumberPath<Integer> userId = createNumber("userId", Integer.class);

    public QCustomer(String variable) {
        this(Customer.class, forVariable(variable), INITS);
    }

    public QCustomer(Path<? extends Customer> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QCustomer(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QCustomer(PathMetadata metadata, PathInits inits) {
        this(Customer.class, metadata, inits);
    }

    public QCustomer(Class<? extends Customer> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.addressBook = inits.isInitialized("addressBook") ? new QAddressBook(forProperty("addressBook")) : null;
        this.user = inits.isInitialized("user") ? new com.banksys.admin.datalayer.entity.QUser(forProperty("user")) : null;
    }

}

