package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.customize.GroupRepositoryCustom;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.util.CollectionUtils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

import static com.mocker.domain.model.entity.QGroup.group;
import static com.mocker.domain.model.entity.QGroupMember.groupMember;
import static com.mocker.domain.model.entity.QProject.project;
import static com.mocker.domain.model.entity.QSchema.schema;
import static com.mocker.domain.model.entity.QTable.table;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@SuppressWarnings("unused")
public class GroupRepositoryImpl implements GroupRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Group> getGroups(UUID userId, List<Role> roles) {
        BooleanExpression criteria = groupMember.user.id.eq(userId);
        if (!CollectionUtils.isEmpty(roles)) {
            criteria = criteria.and(groupMember.role.in(roles));
        }
        return new JPAQuery<Group>(entityManager)
                .from(group)
                .where(criteria)
                .join(group.groupMembers, groupMember).fetchJoin()
                .fetch();
    }

    @Override
    public Group findOneWithEagerProjectsAndGroupMembers(UUID id) {
        return new JPAQuery<Group>(entityManager)
                .from(group)
                .where(group.id.eq(id))
                .leftJoin(group.projects, project).fetchJoin()
                .leftJoin(group.groupMembers, groupMember).fetchJoin()
                .fetchFirst();
    }

    @Override
    public Role getRoleUserInGroup(UUID group, UUID user) {
        return Objects.requireNonNull(new JPAQuery<GroupMember>(entityManager)
                        .from(groupMember)
                        .where(groupMember.group.id.eq(group).and(groupMember.user.id.eq(user))).fetchOne())
                .getRole();
    }

    @Override
    public Group getGroupByProjectId(UUID projectId) {
        return new JPAQuery<Group>(entityManager)
                .from(group)
                .innerJoin(group.projects, project)
                .where(project.id.eq(projectId)).fetchOne();
    }

    @Override
    public Group getGroupBySchemaId(UUID schemaId) {
        return new JPAQuery<Group>(entityManager)
                .from(group)
                .leftJoin(group.projects, project)
                .leftJoin(project.schemas, schema)
                .where(schema.id.eq(schemaId)).fetchOne();
    }

    @Override
    public Group getGroupByTableId(UUID tableId) {
        return new JPAQuery<Group>(entityManager)
                .from(group)
                .leftJoin(group.projects, project)
                .leftJoin(project.schemas, schema)
                .leftJoin(schema.tables, table)
                .where(table.id.eq(tableId)).fetchOne();
    }
}
