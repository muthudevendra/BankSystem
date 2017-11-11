package com.banksys.admin.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QUserTypeAuthority is a Querydsl query type for UserTypeAuthority
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUserTypeAuthority extends EntityPathBase<UserTypeAuthority> {

    private static final long serialVersionUID = 809190371L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QUserTypeAuthority userTypeAuthority = new QUserTypeAuthority("userTypeAuthority");

    public final QAuthority authority;

    public final NumberPath<Integer> authorityId = createNumber("authorityId", Integer.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final QUserType userType;

    public final NumberPath<Integer> userTypeAuthorityId = createNumber("userTypeAuthorityId", Integer.class);

    public final NumberPath<Integer> userTypeId = createNumber("userTypeId", Integer.class);

    public QUserTypeAuthority(String variable) {
        this(UserTypeAuthority.class, forVariable(variable), INITS);
    }

    public QUserTypeAuthority(Path<? extends UserTypeAuthority> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QUserTypeAuthority(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QUserTypeAuthority(PathMetadata metadata, PathInits inits) {
        this(UserTypeAuthority.class, metadata, inits);
    }

    public QUserTypeAuthority(Class<? extends UserTypeAuthority> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.authority = inits.isInitialized("authority") ? new QAuthority(forProperty("authority"), inits.get("authority")) : null;
        this.userType = inits.isInitialized("userType") ? new QUserType(forProperty("userType")) : null;
    }

}

