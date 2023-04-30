package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QTableRelation is a Querydsl query type for TableRelation
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QTableRelation extends EntityPathBase<TableRelation> {

    private static final long serialVersionUID = -1465113756L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QTableRelation tableRelation = new QTableRelation("tableRelation");

    public final QBase _super = new QBase(this);

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

    public final EnumPath<com.mocker.domain.model.entity.enumeration.RelationType> relationType = createEnum("relationType", com.mocker.domain.model.entity.enumeration.RelationType.class);

    public final QField source;

    public final QField target;

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QTableRelation(String variable) {
        this(TableRelation.class, forVariable(variable), INITS);
    }

    public QTableRelation(Path<? extends TableRelation> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QTableRelation(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QTableRelation(PathMetadata metadata, PathInits inits) {
        this(TableRelation.class, metadata, inits);
    }

    public QTableRelation(Class<? extends TableRelation> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.source = inits.isInitialized("source") ? new QField(forProperty("source"), inits.get("source")) : null;
        this.target = inits.isInitialized("target") ? new QField(forProperty("target"), inits.get("target")) : null;
    }

}

