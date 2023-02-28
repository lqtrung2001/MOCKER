package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.*;
import com.mocker.repository.customize.SchemaRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

import static com.mocker.domain.model.entity.QGroupMember.groupMember;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class SchemaRepositoryImpl implements SchemaRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return new JPAQuery<Schema>(entityManager)
                .from(QSchema.schema)
                .where(QSchema.schema.project.id.eq(projectId))
                .fetch();
    }

    @Override
    public List<Schema> getSchemasWithAccess(UUID userId) {
        return new JPAQuery<Schema>(entityManager)
                .from(QSchema.schema)
                .where(QSchema.schema.project.in(new JPAQuery<Project>(entityManager)
                        .from(QProject.project)
                        .where(QProject.project.group.in(new JPAQuery<Group>(entityManager)
                                .from(groupMember)
                                .where(groupMember.user.id.eq(userId))
                                .select(groupMember.group)))))
                .fetch();
    }
}

