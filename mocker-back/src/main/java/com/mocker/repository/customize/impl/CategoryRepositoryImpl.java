package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.*;
import com.mocker.repository.customize.CategoryRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
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

    @Override
    public List<Category> getCategoriesFetchGenerateTypes() {
        List<Category> categories = new JPAQuery<Category>(entityManager)
                .from(QCategory.category)
                .innerJoin(QCategory.category.generateTypes, QGenerateType.generateType).fetchJoin()
                .fetch();
        categories.forEach(category -> {
            category.getGenerateTypes().forEach(generateType -> {
                generateType.setSources(new JPAQuery<Source>(entityManager)
                        .from(QSource.source)
                        .where(QSource.source.generateType.id.eq(generateType.getId()))
                        .limit(3)
                        .fetch());
            });
        });
        return categories;
    }
}
