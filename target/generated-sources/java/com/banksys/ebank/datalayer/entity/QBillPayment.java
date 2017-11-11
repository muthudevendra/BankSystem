package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QBillPayment is a Querydsl query type for BillPayment
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QBillPayment extends EntityPathBase<BillPayment> {

    private static final long serialVersionUID = -2099036942L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QBillPayment billPayment = new QBillPayment("billPayment");

    public final NumberPath<Double> accountBalance = createNumber("accountBalance", Double.class);

    public final NumberPath<Double> amount = createNumber("amount", Double.class);

    public final NumberPath<Integer> billPaymentId = createNumber("billPaymentId", Integer.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final QCustomerAccount fromAccount;

    public final NumberPath<Integer> fromAccountId = createNumber("fromAccountId", Integer.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final DateTimePath<java.util.Date> paymentDate = createDateTime("paymentDate", java.util.Date.class);

    public final NumberPath<Integer> paymentType = createNumber("paymentType", Integer.class);

    public final StringPath referenceNo = createString("referenceNo");

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final NumberPath<Integer> transferStatus = createNumber("transferStatus", Integer.class);

    public QBillPayment(String variable) {
        this(BillPayment.class, forVariable(variable), INITS);
    }

    public QBillPayment(Path<? extends BillPayment> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QBillPayment(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QBillPayment(PathMetadata metadata, PathInits inits) {
        this(BillPayment.class, metadata, inits);
    }

    public QBillPayment(Class<? extends BillPayment> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.fromAccount = inits.isInitialized("fromAccount") ? new QCustomerAccount(forProperty("fromAccount"), inits.get("fromAccount")) : null;
    }

}

