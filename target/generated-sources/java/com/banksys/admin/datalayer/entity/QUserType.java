package com.banksys.admin.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QUserType is a Querydsl query type for UserType
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUserType extends EntityPathBase<UserType> {

    private static final long serialVersionUID = 525568832L;

    public static final QUserType userType1 = new QUserType("userType1");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final StringPath description = createString("description");

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final StringPath userType = createString("userType");

    public final NumberPath<Integer> userTypeId = createNumber("userTypeId", Integer.class);

    public QUserType(String variable) {
        super(UserType.class, forVariable(variable));
    }

    public QUserType(Path<? extends UserType> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUserType(PathMetadata metadata) {
        super(UserType.class, metadata);
    }

}

