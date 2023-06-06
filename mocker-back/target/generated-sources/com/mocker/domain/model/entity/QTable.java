package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QTable is a Querydsl query type for Table
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QTable extends EntityPathBase<Table> {

    private static final long serialVersionUID = 209423688L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QTable table = new QTable("table");

    public final QBase _super = new QBase(this);

    //inherited
    public final StringPath createdBy = _super.createdBy;

    //inherited
    public final StringPath createdByGroup = _super.createdByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> createdDate = _super.createdDate;

    public final StringPath description = createString("description");

    public final ListPath<Field, QField> fields = this.<Field, QField>createList("fields", Field.class, QField.class, PathInits.DIRECT2);

    public final ComparablePath<java.util.UUID> id = createComparable("id", java.util.UUID.class);

    //inherited
    public final StringPath modifiedBy = _super.modifiedBy;

    //inherited
    public final StringPath modifiedByGroup = _super.modifiedByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = _super.modifiedDate;

    public final StringPath name = createString("name");

    public final NumberPath<Integer> row = createNumber("row", Integer.class);

    public final QSchema schema;

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QTable(String variable) {
        this(Table.class, forVariable(variable), INITS);
    }

    public QTable(Path<? extends Table> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QTable(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QTable(PathMetadata metadata, PathInits inits) {
        this(Table.class, metadata, inits);
    }

    public QTable(Class<? extends Table> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.schema = inits.isInitialized("schema") ? new QSchema(forProperty("schema"), inits.get("schema")) : null;
    }

}

