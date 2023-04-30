package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QSource is a Querydsl query type for Source
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QSource extends EntityPathBase<Source> {

    private static final long serialVersionUID = -2112928287L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QSource source = new QSource("source");

    public final QBase _super = new QBase(this);

    //inherited
    public final StringPath createdBy = _super.createdBy;

    //inherited
    public final StringPath createdByGroup = _super.createdByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> createdDate = _super.createdDate;

    public final QGenerateType generateType;

    public final ComparablePath<java.util.UUID> id = createComparable("id", java.util.UUID.class);

    //inherited
    public final StringPath modifiedBy = _super.modifiedBy;

    //inherited
    public final StringPath modifiedByGroup = _super.modifiedByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = _super.modifiedDate;

    public final StringPath value = createString("value");

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QSource(String variable) {
        this(Source.class, forVariable(variable), INITS);
    }

    public QSource(Path<? extends Source> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QSource(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QSource(PathMetadata metadata, PathInits inits) {
        this(Source.class, metadata, inits);
    }

    public QSource(Class<? extends Source> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.generateType = inits.isInitialized("generateType") ? new QGenerateType(forProperty("generateType"), inits.get("generateType")) : null;
    }

}

