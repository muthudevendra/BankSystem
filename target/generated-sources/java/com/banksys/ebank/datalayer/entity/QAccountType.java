package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QAccountType is a Querydsl query type for AccountType
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QAccountType extends EntityPathBase<AccountType> {

    private static final long serialVersionUID = -257586182L;

    public static final QAccountType accountType = new QAccountType("accountType");

    public final NumberPath<Integer> accountTypeId = createNumber("accountTypeId", Integer.class);

    public final StringPath accountTypeName = createString("accountTypeName");

    public final NumberPath<Double> annualCost = createNumber("annualCost", Double.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final StringPath description = createString("description");

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final NumberPath<Integer> maxAge = createNumber("maxAge", Integer.class);

    public final NumberPath<Integer> minAge = createNumber("minAge", Integer.class);

    public final NumberPath<Double> minDeposit = createNumber("minDeposit", Double.class);

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public QAccountType(String variable) {
        super(AccountType.class, forVariable(variable));
    }

    public QAccountType(Path<? extends AccountType> path) {
        super(path.getType(), path.getMetadata());
    }

    public QAccountType(PathMetadata metadata) {
        super(AccountType.class, metadata);
    }

}

