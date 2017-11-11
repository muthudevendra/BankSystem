package com.banksys.admin.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QUserLoginAudit is a Querydsl query type for UserLoginAudit
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUserLoginAudit extends EntityPathBase<UserLoginAudit> {

    private static final long serialVersionUID = -805022344L;

    public static final QUserLoginAudit userLoginAudit = new QUserLoginAudit("userLoginAudit");

    public final DateTimePath<java.util.Date> loginDate = createDateTime("loginDate", java.util.Date.class);

    public final DateTimePath<java.util.Date> logoutDate = createDateTime("logoutDate", java.util.Date.class);

    public final StringPath remoteAddress = createString("remoteAddress");

    public final NumberPath<Integer> userLoginAuditId = createNumber("userLoginAuditId", Integer.class);

    public final StringPath username = createString("username");

    public QUserLoginAudit(String variable) {
        super(UserLoginAudit.class, forVariable(variable));
    }

    public QUserLoginAudit(Path<? extends UserLoginAudit> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUserLoginAudit(PathMetadata metadata) {
        super(UserLoginAudit.class, metadata);
    }

}

