package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCustomerAccount is a Querydsl query type for CustomerAccount
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCustomerAccount extends EntityPathBase<CustomerAccount> {

    private static final long serialVersionUID = -789981214L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QCustomerAccount customerAccount = new QCustomerAccount("customerAccount");

    public final QAccount account;

    public final NumberPath<Integer> accountId = createNumber("accountId", Integer.class);

    public final StringPath accountNo = createString("accountNo");

    public final NumberPath<Double> availableBalance = createNumber("availableBalance", Double.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final com.banksys.admin.datalayer.entity.QCurrency currency;

    public final NumberPath<Integer> currencyId = createNumber("currencyId", Integer.class);

    public final QCustomer customer;

    public final NumberPath<Integer> customerAccountId = createNumber("customerAccountId", Integer.class);

    public final NumberPath<Integer> customerId = createNumber("customerId", Integer.class);

    public final DateTimePath<java.util.Date> endDate = createDateTime("endDate", java.util.Date.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final DateTimePath<java.util.Date> startDate = createDateTime("startDate", java.util.Date.class);

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QCustomerAccount(String variable) {
        this(CustomerAccount.class, forVariable(variable), INITS);
    }

    public QCustomerAccount(Path<? extends CustomerAccount> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QCustomerAccount(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QCustomerAccount(PathMetadata metadata, PathInits inits) {
        this(CustomerAccount.class, metadata, inits);
    }

    public QCustomerAccount(Class<? extends CustomerAccount> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.account = inits.isInitialized("account") ? new QAccount(forProperty("account"), inits.get("account")) : null;
        this.currency = inits.isInitialized("currency") ? new com.banksys.admin.datalayer.entity.QCurrency(forProperty("currency")) : null;
        this.customer = inits.isInitialized("customer") ? new QCustomer(forProperty("customer"), inits.get("customer")) : null;
    }

}

