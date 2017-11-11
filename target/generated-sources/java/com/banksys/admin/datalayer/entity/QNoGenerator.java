package com.banksys.admin.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QNoGenerator is a Querydsl query type for NoGenerator
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QNoGenerator extends EntityPathBase<NoGenerator> {

    private static final long serialVersionUID = 781972119L;

    public static final QNoGenerator noGenerator = new QNoGenerator("noGenerator");

    public final StringPath name = createString("name");

    public final NumberPath<Integer> nextNo = createNumber("nextNo", Integer.class);

    public final NumberPath<Integer> noGenId = createNumber("noGenId", Integer.class);

    public final NumberPath<Integer> previousNo = createNumber("previousNo", Integer.class);

    public QNoGenerator(String variable) {
        super(NoGenerator.class, forVariable(variable));
    }

    public QNoGenerator(Path<? extends NoGenerator> path) {
        super(path.getType(), path.getMetadata());
    }

    public QNoGenerator(PathMetadata metadata) {
        super(NoGenerator.class, metadata);
    }

}

