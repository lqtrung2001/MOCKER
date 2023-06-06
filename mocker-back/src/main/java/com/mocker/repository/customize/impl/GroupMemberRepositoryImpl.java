package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.customize.GroupMemberRepositoryCustom;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.util.CollectionUtils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

import static com.mocker.domain.model.entity.QGroupMember.groupMember;

/**
 * @author Do Quoc Viet
 */

@SuppressWarnings("unused")
public class GroupMemberRepositoryImpl implements GroupMemberRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<GroupMember> getGroupMembersByGroupId(UUID groupId, List<Role> roles) {
        BooleanExpression criteria = groupMember.group.id.eq(groupId);
        if (!CollectionUtils.isEmpty(roles)) {
            criteria = criteria.and(groupMember.role.in(roles));
        }
        return new JPAQuery<GroupMember>(entityManager)
                .from(groupMember)
                .where(criteria)
                .fetch();
    }
}
