package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.GroupMember;
import com.mockez.repository.customize.GroupRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import static com.mockez.domain.model.entity.QGroup.group;
import static com.mockez.domain.model.entity.QGroupMember.groupMember;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

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
}
