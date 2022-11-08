package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.QUser;
import com.mockez.domain.model.entity.User;
import com.mockez.repository.customize.UserRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class UserRepositoryImpl implements UserRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public User findByEmailAndPassword(String email, String password) {
        return new JPAQuery<User>(entityManager)
                .from(QUser.user)
                .where(QUser.user.email.eq(email)
                        .and(QUser.user.password.eq(password)))
                .fetchOne();
    }
}
