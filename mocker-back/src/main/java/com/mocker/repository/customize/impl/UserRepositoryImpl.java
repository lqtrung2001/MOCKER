package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.User;
import com.mocker.repository.customize.UserRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import static com.mocker.domain.model.entity.QGroupMember.groupMember;
import static com.mocker.domain.model.entity.QUser.user;

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
