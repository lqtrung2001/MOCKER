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
    public Role getRoleUserInGroup(UUID group, UUID user) {
        return Objects.requireNonNull(new JPAQuery<GroupMember>(entityManager)
                        .from(groupMember)
                        .where(groupMember.group.id.eq(group).and(groupMember.user.id.eq(user))).fetchOne())
                .getRole();
    }

}
