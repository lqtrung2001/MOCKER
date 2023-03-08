package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.repository.customize.SchemaRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;
import org.hibernate.Hibernate;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static com.mocker.domain.model.entity.QGroupMember.groupMember;
import static com.mocker.domain.model.entity.QProject.project;
import static com.mocker.domain.model.entity.QSchema.schema;
import static com.mocker.domain.model.entity.QTable.table;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class SchemaRepositoryImpl implements SchemaRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return new JPAQuery<Schema>(entityManager)
                .from(schema)
                .where(schema.project.id.eq(projectId))
                .fetch();
    }

    @Override
    public List<Schema> getSchemas(UUID userId) {
        return new JPAQuery<Schema>(entityManager)
                .from(schema)
                .where(schema.project.in(new JPAQuery<Project>(entityManager)
                        .from(project)
                        .where(project.group.in(new JPAQuery<Group>(entityManager)
                                .from(groupMember)
                                .where(groupMember.user.id.eq(userId))
                                .select(groupMember.group)))))
                .fetch();
    }

    @Override
    public Schema getSchema(UUID id) {
        Schema entity = new JPAQuery<Schema>(entityManager)
                .from(schema)
                .where(schema.id.eq(id))
                .leftJoin(schema.tables, table).fetchJoin()
                .fetchOne();
        Optional.ofNullable(entity).ifPresent(value -> value.getTables()
                .forEach(table -> Hibernate.initialize(table.getFields())));
        return entity;
    }
}

