package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.customize.ProjectRepositoryCustom;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.util.CollectionUtils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

import static com.mocker.domain.model.entity.QGroupMember.groupMember;
import static com.mocker.domain.model.entity.QProject.project;
import static com.mocker.domain.model.entity.QSchema.schema;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class ProjectRepositoryImpl implements ProjectRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public Project getProject(UUID id) {
        return new JPAQuery<Project>(entityManager)
                .from(project)
                .where(project.id.eq(id))
                .leftJoin(project.schemas, schema).fetchJoin()
                .fetchOne();
    }

    @Override
    public List<Project> getProjects(UUID authId, List<Role> roles) {
        BooleanExpression criteria = groupMember.user.id.eq(authId);
        if (!CollectionUtils.isEmpty(roles)) {
            criteria = criteria.and(groupMember.role.in(roles));
        }
        return new JPAQuery<Project>(entityManager)
                .from(project)
                .where(project.group.in(new JPAQuery<Group>(entityManager)
                        .from(groupMember)
                        .where(criteria)
                        .select(groupMember.group)
                        .fetch()))
                .fetch();
    }

    @Override
    public List<Project> getProjectsByGroupId(UUID authId, UUID groupId, List<Role> roles) {
        BooleanExpression criteria = groupMember.group.id.eq(groupId)
                .and(groupMember.user.id.eq(authId));
        if (!CollectionUtils.isEmpty(roles)) {
            criteria = criteria.and(groupMember.role.in(roles));
        }
        return new JPAQuery<Project>(entityManager)
                .from(project)
                .where(project.group.in(new JPAQuery<Group>(entityManager)
                        .from(groupMember)
                        .where(criteria)
                        .select(groupMember.group)
                        .fetch()))
                .fetch();
    }
}
