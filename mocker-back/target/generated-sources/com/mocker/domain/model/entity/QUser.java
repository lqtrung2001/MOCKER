package com.mocker.domain.model.entity;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QUser is a Querydsl query type for User
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QUser extends EntityPathBase<User> {

    private static final long serialVersionUID = 1530823441L;

    public static final QUser user = new QUser("user");

    public final QBase _super = new QBase(this);

    public final StringPath address = createString("address");

    public final StringPath bio = createString("bio");

    //inherited
    public final StringPath createdBy = _super.createdBy;

    //inherited
    public final StringPath createdByGroup = _super.createdByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> createdDate = _super.createdDate;

    public final DateTimePath<java.time.OffsetDateTime> dob = createDateTime("dob", java.time.OffsetDateTime.class);

    public final EnumPath<com.mocker.domain.model.entity.enumeration.Gender> gender = createEnum("gender", com.mocker.domain.model.entity.enumeration.Gender.class);

    public final StringPath grantedAuthorities = createString("grantedAuthorities");

    public final ListPath<GroupMember, QGroupMember> groupMembers = this.<GroupMember, QGroupMember>createList("groupMembers", GroupMember.class, QGroupMember.class, PathInits.DIRECT2);

    public final ComparablePath<java.util.UUID> id = createComparable("id", java.util.UUID.class);

    public final BooleanPath isAccountNonExpired = createBoolean("isAccountNonExpired");

    public final BooleanPath isAccountNonLocked = createBoolean("isAccountNonLocked");

    public final BooleanPath isCredentialsNonExpired = createBoolean("isCredentialsNonExpired");

    public final BooleanPath isEnabled = createBoolean("isEnabled");

    //inherited
    public final StringPath modifiedBy = _super.modifiedBy;

    //inherited
    public final StringPath modifiedByGroup = _super.modifiedByGroup;

    //inherited
    public final DateTimePath<java.time.OffsetDateTime> modifiedDate = _super.modifiedDate;

    public final StringPath name = createString("name");

    public final StringPath password = createString("password");

    public final StringPath phone = createString("phone");

    public final StringPath username = createString("username");

    //inherited
    public final NumberPath<Integer> version = _super.version;

    public QUser(String variable) {
        super(User.class, forVariable(variable));
    }

    public QUser(Path<? extends User> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUser(PathMetadata metadata) {
        super(User.class, metadata);
    }

}

