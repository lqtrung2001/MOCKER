package com.mocker.domain.model.entity.composite_key;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;


/**
 * QGroupMemberPK is a Querydsl query type for GroupMemberPK
 */
@Generated("com.querydsl.codegen.DefaultEmbeddableSerializer")
public class QGroupMemberPK extends BeanPath<GroupMemberPK> {

    private static final long serialVersionUID = -1021259097L;

    public static final QGroupMemberPK groupMemberPK = new QGroupMemberPK("groupMemberPK");

    public final ComparablePath<java.util.UUID> groupId = createComparable("groupId", java.util.UUID.class);

    public final ComparablePath<java.util.UUID> userId = createComparable("userId", java.util.UUID.class);

    public QGroupMemberPK(String variable) {
        super(GroupMemberPK.class, forVariable(variable));
    }

    public QGroupMemberPK(Path<? extends GroupMemberPK> path) {
        super(path.getType(), path.getMetadata());
    }

    public QGroupMemberPK(PathMetadata metadata) {
        super(GroupMemberPK.class, metadata);
    }

}

