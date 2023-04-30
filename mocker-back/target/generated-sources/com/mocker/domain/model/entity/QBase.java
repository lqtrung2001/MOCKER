package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;


/**
 * QBase is a Querydsl query type for Base
 */
@Generated("com.querydsl.codegen.DefaultSupertypeSerializer")
public class QBase extends EntityPathBase<Base> {

    private static final long serialVersionUID = 1530240535L;

    public static final QBase base = new QBase("base");

    public final StringPath createdBy = createString("createdBy");

    public final StringPath createdByGroup = createString("createdByGroup");

    public final DateTimePath<java.time.OffsetDateTime> createdDate = createDateTime("createdDate", java.time.OffsetDateTime.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final StringPath modifiedByGroup = createString("modifiedByGroup");

    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = createDateTime("modifiedDate", java.time.OffsetDateTime.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QBase(String variable) {
        super(Base.class, forVariable(variable));
    }

    public QBase(Path<? extends Base> path) {
        super(path.getType(), path.getMetadata());
    }

    public QBase(PathMetadata metadata) {
        super(Base.class, metadata);
    }

}

