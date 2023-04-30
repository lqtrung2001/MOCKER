package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QSchema is a Querydsl query type for Schema
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QSchema extends EntityPathBase<Schema> {

    private static final long serialVersionUID = -2124410009L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QSchema schema = new QSchema("schema");

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

    public final StringPath name = createString("name");

    public final QProject project;

    public final ListPath<Table, QTable> tables = this.<Table, QTable>createList("tables", Table.class, QTable.class, PathInits.DIRECT2);

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QSchema(String variable) {
        this(Schema.class, forVariable(variable), INITS);
    }

    public QSchema(Path<? extends Schema> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QSchema(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QSchema(PathMetadata metadata, PathInits inits) {
        this(Schema.class, metadata, inits);
    }

    public QSchema(Class<? extends Schema> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.project = inits.isInitialized("project") ? new QProject(forProperty("project"), inits.get("project")) : null;
    }

}

