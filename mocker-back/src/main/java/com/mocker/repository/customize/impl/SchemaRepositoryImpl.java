package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.customize.SchemaRepositoryCustom;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import org.hibernate.Hibernate;
import org.springframework.util.CollectionUtils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static com.mocker.domain.model.entity.QGroupMember.groupMember;
import static com.mocker.domain.model.entity.QProject.project;
import static com.mocker.domain.model.entity.QSchema.schema;
import static com.mocker.domain.model.entity.QTable.table;
import static com.mocker.domain.model.entity.QTableRelation.tableRelation;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class SchemaRepositoryImpl implements SchemaRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Schema> getSchemasByProjectId(UUID authId, UUID projectId, List<Role> roles) {
        BooleanExpression criteria = schema.project.id.eq(projectId)
                .and(groupMember.user.id.eq(authId));
        if (!CollectionUtils.isEmpty(roles)) {
            criteria = criteria.and(groupMember.role.in(roles));
        }
        return new JPAQuery<Schema>(entityManager)
                .from(schema)
                .where(schema.project.in(new JPAQuery<Project>(entityManager)
                        .from(project)
                        .where(project.group.in(new JPAQuery<Group>(entityManager)
                                .from(groupMember)
                                .where(criteria)
                                .select(groupMember.group)))))
                .fetch();
    }

    @Override
    public List<Schema> getSchemas(UUID userId, List<Role> roles) {
        BooleanExpression criteria = groupMember.user.id.eq(userId);
        if (!CollectionUtils.isEmpty(roles)) {
            criteria = criteria.and(groupMember.role.in(roles));
        }
        return new JPAQuery<Schema>(entityManager)
                .from(schema)
                .where(schema.project.in(new JPAQuery<Project>(entityManager)
                        .from(project)
                        .where(project.group.in(new JPAQuery<Group>(entityManager)
                                .from(groupMember)
                                .where(criteria)
                                .select(groupMember.group)))))
                .fetch();
    }

    @Override
    public Schema getSchema(UUID id) {
        Schema entity = new JPAQuery<Schema>(entityManager)
                .from(schema)
                .where(schema.id.eq(id))
                .leftJoin(schema.tables, table).fetchJoin()
                .fetchFirst();
        Optional.ofNullable(entity)
                .ifPresent(value -> value.getTables()
                        .forEach(table -> Hibernate.initialize(table.getFields())));
        return entity;
    }

    @Override
    public List<TableRelation> getTableRelationsBySchema(UUID schemaId) {
        List<UUID> tableIds = new JPAQuery<UUID>(entityManager)
                .from(table)
                .where(table.schema.id.eq(schemaId))
                .select(table.id)
                .fetch();
        return new JPAQuery<TableRelation>(entityManager)
                .from(tableRelation)
                .where(tableRelation.source.table.id.in(tableIds))
                .fetch();
    }
}

