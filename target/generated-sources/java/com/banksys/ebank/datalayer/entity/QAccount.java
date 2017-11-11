package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QAccount is a Querydsl query type for Account
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QAccount extends EntityPathBase<Account> {

    private static final long serialVersionUID = 14342304L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QAccount account = new QAccount("account");

    public final NumberPath<Integer> accountId = createNumber("accountId", Integer.class);

    public final QAccountType accountType;

    public final NumberPath<Integer> accountTypeId = createNumber("accountTypeId", Integer.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final NumberPath<Integer> interestCalMethod = createNumber("interestCalMethod", Integer.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final NumberPath<Integer> mobileBankAvailability = createNumber("mobileBankAvailability", Integer.class);

    public final NumberPath<Integer> onlineBankAvailability = createNumber("onlineBankAvailability", Integer.class);

    public final NumberPath<Integer> passbookAvailability = createNumber("passbookAvailability", Integer.class);

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public QAccount(String variable) {
        this(Account.class, forVariable(variable), INITS);
    }

    public QAccount(Path<? extends Account> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QAccount(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QAccount(PathMetadata metadata, PathInits inits) {
        this(Account.class, metadata, inits);
    }

    public QAccount(Class<? extends Account> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.accountType = inits.isInitialized("accountType") ? new QAccountType(forProperty("accountType")) : null;
    }

}

