package com.banksys.admin.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QUserLoginFailureAudit is a Querydsl query type for UserLoginFailureAudit
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUserLoginFailureAudit extends EntityPathBase<UserLoginFailureAudit> {

    private static final long serialVersionUID = 106007604L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QUserLoginFailureAudit userLoginFailureAudit = new QUserLoginFailureAudit("userLoginFailureAudit");

    public final DateTimePath<java.util.Date> attemptedDate = createDateTime("attemptedDate", java.util.Date.class);

    public final NumberPath<Integer> lockedStatus = createNumber("lockedStatus", Integer.class);

    public final NumberPath<Integer> numberOfAttempts = createNumber("numberOfAttempts", Integer.class);

    public final DateTimePath<java.util.Date> unlockedAt = createDateTime("unlockedAt", java.util.Date.class);

    public final QUser user;

    public final NumberPath<Integer> userId = createNumber("userId", Integer.class);

    public final NumberPath<Integer> userLoginFailureAuditId = createNumber("userLoginFailureAuditId", Integer.class);

    public QUserLoginFailureAudit(String variable) {
        this(UserLoginFailureAudit.class, forVariable(variable), INITS);
    }

    public QUserLoginFailureAudit(Path<? extends UserLoginFailureAudit> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QUserLoginFailureAudit(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QUserLoginFailureAudit(PathMetadata metadata, PathInits inits) {
        this(UserLoginFailureAudit.class, metadata, inits);
    }

    public QUserLoginFailureAudit(Class<? extends UserLoginFailureAudit> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.user = inits.isInitialized("user") ? new QUser(forProperty("user")) : null;
    }

}

