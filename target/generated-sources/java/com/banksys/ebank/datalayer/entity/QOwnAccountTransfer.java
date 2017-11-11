package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QOwnAccountTransfer is a Querydsl query type for OwnAccountTransfer
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QOwnAccountTransfer extends EntityPathBase<OwnAccountTransfer> {

    private static final long serialVersionUID = 1512353919L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QOwnAccountTransfer ownAccountTransfer = new QOwnAccountTransfer("ownAccountTransfer");

    public final NumberPath<Double> amount = createNumber("amount", Double.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final NumberPath<Integer> currencyId = createNumber("currencyId", Integer.class);

    public final StringPath description = createString("description");

    public final QCustomerAccount fromAccount;

    public final NumberPath<Double> fromAccountBalance = createNumber("fromAccountBalance", Double.class);

    public final NumberPath<Integer> fromAccountId = createNumber("fromAccountId", Integer.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final NumberPath<Integer> ownAccountTransferId = createNumber("ownAccountTransferId", Integer.class);

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final QCustomerAccount toAccount;

    public final NumberPath<Double> toAccountBalance = createNumber("toAccountBalance", Double.class);

    public final NumberPath<Integer> toAccountId = createNumber("toAccountId", Integer.class);

    public final DateTimePath<java.util.Date> transferDate = createDateTime("transferDate", java.util.Date.class);

    public QOwnAccountTransfer(String variable) {
        this(OwnAccountTransfer.class, forVariable(variable), INITS);
    }

    public QOwnAccountTransfer(Path<? extends OwnAccountTransfer> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QOwnAccountTransfer(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QOwnAccountTransfer(PathMetadata metadata, PathInits inits) {
        this(OwnAccountTransfer.class, metadata, inits);
    }

    public QOwnAccountTransfer(Class<? extends OwnAccountTransfer> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.fromAccount = inits.isInitialized("fromAccount") ? new QCustomerAccount(forProperty("fromAccount"), inits.get("fromAccount")) : null;
        this.toAccount = inits.isInitialized("toAccount") ? new QCustomerAccount(forProperty("toAccount"), inits.get("toAccount")) : null;
    }

}

