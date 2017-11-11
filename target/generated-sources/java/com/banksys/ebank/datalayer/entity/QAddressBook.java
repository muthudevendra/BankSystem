package com.banksys.ebank.datalayer.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QAddressBook is a Querydsl query type for AddressBook
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QAddressBook extends EntityPathBase<AddressBook> {

    private static final long serialVersionUID = 1793396208L;

    public static final QAddressBook addressBook = new QAddressBook("addressBook");

    public final NumberPath<Integer> addressBookId = createNumber("addressBookId", Integer.class);

    public final StringPath addressLine1 = createString("addressLine1");

    public final StringPath addressLine2 = createString("addressLine2");

    public final StringPath addressLine3 = createString("addressLine3");

    public final StringPath city = createString("city");

    public final StringPath country = createString("country");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Date> createdDate = createDateTime("createdDate", java.util.Date.class);

    public final StringPath email = createString("email");

    public final StringPath lastModifiedBy = createString("lastModifiedBy");

    public final DateTimePath<java.util.Date> lastModifiedDate = createDateTime("lastModifiedDate", java.util.Date.class);

    public final StringPath mobile = createString("mobile");

    public final NumberPath<Integer> status = createNumber("status", Integer.class);

    public final StringPath telephone = createString("telephone");

    public QAddressBook(String variable) {
        super(AddressBook.class, forVariable(variable));
    }

    public QAddressBook(Path<? extends AddressBook> path) {
        super(path.getType(), path.getMetadata());
    }

    public QAddressBook(PathMetadata metadata) {
        super(AddressBook.class, metadata);
    }

}

