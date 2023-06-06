package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QProject is a Querydsl query type for Project
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QProject extends EntityPathBase<Project> {

    private static final long serialVersionUID = 636298771L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QProject project = new QProject("project");

    public final QBase _super = new QBase(this);

    //inherited
    public final StringPath createdBy = _super.createdBy;

    //inherited
    public final StringPath createdByGroup = _super.createdByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> createdDate = _super.createdDate;

    public final StringPath description = createString("description");

    public final QGroup group;

    public final ComparablePath<java.util.UUID> id = createComparable("id", java.util.UUID.class);

    //inherited
    public final StringPath modifiedBy = _super.modifiedBy;

    //inherited
    public final StringPath modifiedByGroup = _super.modifiedByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = _super.modifiedDate;

    public final StringPath name = createString("name");

    public final ListPath<Schema, QSchema> schemas = this.<Schema, QSchema>createList("schemas", Schema.class, QSchema.class, PathInits.DIRECT2);

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QProject(String variable) {
        this(Project.class, forVariable(variable), INITS);
    }

    public QProject(Path<? extends Project> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QProject(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QProject(PathMetadata metadata, PathInits inits) {
        this(Project.class, metadata, inits);
    }

    public QProject(Class<? extends Project> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.group = inits.isInitialized("group") ? new QGroup(forProperty("group")) : null;
    }

}

