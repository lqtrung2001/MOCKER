package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QSQLType is a Querydsl query type for SQLType
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QSQLType extends EntityPathBase<SQLType> {

    private static final long serialVersionUID = -1973878494L;

    public static final QSQLType sQLType = new QSQLType("sQLType");

    public final QBase _super = new QBase(this);

    public final StringPath code = createString("code");

    //inherited
    public final StringPath createdBy = _super.createdBy;

    //inherited
    public final StringPath createdByGroup = _super.createdByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> createdDate = _super.createdDate;

    public final StringPath description = createString("description");

    public final ListPath<GenerateType, QGenerateType> generateTypes = this.<GenerateType, QGenerateType>createList("generateTypes", GenerateType.class, QGenerateType.class, PathInits.DIRECT2);

    public final ComparablePath<java.util.UUID> id = createComparable("id", java.util.UUID.class);

    //inherited
    public final StringPath modifiedBy = _super.modifiedBy;

    //inherited
    public final StringPath modifiedByGroup = _super.modifiedByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = _super.modifiedDate;

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QSQLType(String variable) {
        super(SQLType.class, forVariable(variable));
    }

    public QSQLType(Path<? extends SQLType> path) {
        super(path.getType(), path.getMetadata());
    }

    public QSQLType(PathMetadata metadata) {
        super(SQLType.class, metadata);
    }

}

