package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.QCategory;
import com.mockez.domain.model.entity.QGenerateType;
import com.mockez.repository.customize.CategoryRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.UUID;

public class CategoryRepositoryImpl implements CategoryRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public Integer getGenerateTypesCount(UUID id) {
        return new JPAQuery<Integer>(entityManager)
                .from(QCategory.category)
                .where(QCategory.category.id.eq(id))
                .innerJoin(QCategory.category.generateTypes, QGenerateType.generateType)
                .fetch()
                .size();
    }
}
