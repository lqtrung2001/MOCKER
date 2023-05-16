package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.customize.GroupRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.stream.Collectors;

import static com.mocker.domain.model.entity.QGroup.group;
import static com.mocker.domain.model.entity.QGroupMember.groupMember;
import static com.mocker.domain.model.entity.QProject.project;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class GroupRepositoryImpl implements GroupRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Group> findAllWithAccess(UUID userId) {
        return new JPAQuery<GroupMember>(entityManager)
                .from(groupMember)
                .where(groupMember.user.id.eq(userId))
                .innerJoin(groupMember.group, group).fetchJoin()
                .fetch()
                .stream()
                .map(GroupMember::getGroup)
                .collect(Collectors.toList());
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
}