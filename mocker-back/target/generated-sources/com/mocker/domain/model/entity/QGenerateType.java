package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QGenerateType is a Querydsl query type for GenerateType
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QGenerateType extends EntityPathBase<GenerateType> {

    private static final long serialVersionUID = -1297791083L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QGenerateType generateType = new QGenerateType("generateType");

    public final QBase _super = new QBase(this);

    public final QCategory category;

    public final StringPath code = createString("code");

    //inherited
    public final StringPath createdBy = _super.createdBy;

    //inherited
    public final StringPath createdByGroup = _super.createdByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> createdDate = _super.createdDate;

    public final StringPath description = createString("description");

    public final ComparablePath<java.util.UUID> id = createComparable("id", java.util.UUID.class);

    //inherited
    public final StringPath modifiedBy = _super.modifiedBy;

    //inherited
    public final StringPath modifiedByGroup = _super.modifiedByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = _super.modifiedDate;

    public final ListPath<Source, QSource> sources = this.<Source, QSource>createList("sources", Source.class, QSource.class, PathInits.DIRECT2);

    public final ListPath<SQLType, QSQLType> sqlTypes = this.<SQLType, QSQLType>createList("sqlTypes", SQLType.class, QSQLType.class, PathInits.DIRECT2);

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QGenerateType(String variable) {
        this(GenerateType.class, forVariable(variable), INITS);
    }

    public QGenerateType(Path<? extends GenerateType> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QGenerateType(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QGenerateType(PathMetadata metadata, PathInits inits) {
        this(GenerateType.class, metadata, inits);
    }

    public QGenerateType(Class<? extends GenerateType> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.category = inits.isInitialized("category") ? new QCategory(forProperty("category")) : null;
    }

}

