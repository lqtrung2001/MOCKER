package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.QCategory;
import com.mocker.domain.model.entity.QGenerateType;
import com.mocker.repository.customize.CategoryRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class CategoryRepositoryImpl implements CategoryRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

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
