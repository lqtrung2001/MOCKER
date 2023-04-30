package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QField is a Querydsl query type for Field
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QField extends EntityPathBase<Field> {

    private static final long serialVersionUID = 196735604L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QField field = new QField("field");

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

    public final StringPath name = createString("name");

    public final QOption option;

    public final QSQLType sqlType;

    public final QTable table;

    public final SetPath<TableRelation, QTableRelation> tableRelationSources = this.<TableRelation, QTableRelation>createSet("tableRelationSources", TableRelation.class, QTableRelation.class, PathInits.DIRECT2);

    public final SetPath<TableRelation, QTableRelation> tableRelationTargets = this.<TableRelation, QTableRelation>createSet("tableRelationTargets", TableRelation.class, QTableRelation.class, PathInits.DIRECT2);

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QField(String variable) {
        this(Field.class, forVariable(variable), INITS);
    }

    public QField(Path<? extends Field> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QField(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QField(PathMetadata metadata, PathInits inits) {
        this(Field.class, metadata, inits);
    }

    public QField(Class<? extends Field> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.generateType = inits.isInitialized("generateType") ? new QGenerateType(forProperty("generateType"), inits.get("generateType")) : null;
        this.option = inits.isInitialized("option") ? new QOption(forProperty("option"), inits.get("option")) : null;
        this.sqlType = inits.isInitialized("sqlType") ? new QSQLType(forProperty("sqlType")) : null;
        this.table = inits.isInitialized("table") ? new QTable(forProperty("table"), inits.get("table")) : null;
    }

}

