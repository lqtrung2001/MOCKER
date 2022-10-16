package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.Category;
import com.mockez.domain.model.entity.GenerateType;
import com.mockez.domain.model.entity.QCategory;
import com.mockez.domain.model.entity.QGenerateType;
import com.mockez.repository.customize.CategoryRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
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

    @Override
    public Category getCategoryHasGenerateTypes(UUID id) {
        return new JPAQuery<Category>(entityManager)
                .from(QCategory.category)
                .where(QCategory.category.id.eq(id))
                .innerJoin(QCategory.category.generateTypes, QGenerateType.generateType)
                .fetchJoin()
                .fetchFirst();
    }
}
