package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QThirdPartyTransfer is a Querydsl query type for ThirdPartyTransfer
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QThirdPartyTransfer extends EntityPathBase<ThirdPartyTransfer> {

    private static final long serialVersionUID = -453110153L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QThirdPartyTransfer thirdPartyTransfer = new QThirdPartyTransfer("thirdPartyTransfer");

    public final NumberPath<Double> accountBalance = createNumber("accountBalance", Double.class);

    public final StringPath accountNo = createString("accountNo");

    public final NumberPath<Double> amount = createNumber("amount", Double.class);

    public final StringPath bank = createString("bank");

    public final StringPath branch = createString("branch");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final com.banksys.admin.datalayer.entity.QCurrency currency;

    public final NumberPath<Integer> currencySeq = createNumber("currencySeq", Integer.class);

    public final StringPath description = createString("description");

    public final QCustomerAccount fromAccount;

    public final NumberPath<Integer> fromAccountId = createNumber("fromAccountId", Integer.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final StringPath receiverName = createString("receiverName");

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final QBank targetBank;

    public final NumberPath<Integer> thirdPartyAccountTransferId = createNumber("thirdPartyAccountTransferId", Integer.class);

    public final DateTimePath<java.util.Date> transferDate = createDateTime("transferDate", java.util.Date.class);

    public final NumberPath<Integer> transferStatus = createNumber("transferStatus", Integer.class);

    public QThirdPartyTransfer(String variable) {
        this(ThirdPartyTransfer.class, forVariable(variable), INITS);
    }

    public QThirdPartyTransfer(Path<? extends ThirdPartyTransfer> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QThirdPartyTransfer(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QThirdPartyTransfer(PathMetadata metadata, PathInits inits) {
        this(ThirdPartyTransfer.class, metadata, inits);
    }

    public QThirdPartyTransfer(Class<? extends ThirdPartyTransfer> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.currency = inits.isInitialized("currency") ? new com.banksys.admin.datalayer.entity.QCurrency(forProperty("currency")) : null;
        this.fromAccount = inits.isInitialized("fromAccount") ? new QCustomerAccount(forProperty("fromAccount"), inits.get("fromAccount")) : null;
        this.targetBank = inits.isInitialized("targetBank") ? new QBank(forProperty("targetBank")) : null;
    }

}

