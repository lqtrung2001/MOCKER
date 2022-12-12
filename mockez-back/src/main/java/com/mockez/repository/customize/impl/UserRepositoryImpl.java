package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.GroupMember;
import com.mockez.domain.model.entity.User;
import com.mockez.repository.customize.UserRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import static com.mockez.domain.model.entity.QGroupMember.groupMember;
import static com.mockez.domain.model.entity.QUser.user;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class UserRepositoryImpl implements UserRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public User findByEmailAndPassword(String username, String password) {
        return new JPAQuery<User>(entityManager)
                .from(user)
                .where(user.username.eq(username)
                        .and(user.password.eq(password)))
                .fetchOne();
    }

    @Override
    public Set<UUID> findAllGroupIds(UUID id) {
        return new JPAQuery<GroupMember>(entityManager)
                .from(groupMember)
                .where(groupMember.user.id.eq(id))
                .innerJoin(groupMember.group).fetchJoin()
                .fetch()
                .stream()
                .map(GroupMember::getGroup)
                .map(Group::getId)
                .collect(Collectors.toSet());
    }


}
