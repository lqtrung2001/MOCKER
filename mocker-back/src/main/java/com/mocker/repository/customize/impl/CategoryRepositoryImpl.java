package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.QGenerateType;
import com.mocker.repository.customize.CategoryRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import static com.mocker.domain.model.entity.QCategory.category;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class CategoryRepositoryImpl implements CategoryRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Integer getGenerateTypesCount(UUID id) {
        return new JPAQuery<Integer>(entityManager)
                .from(category)
                .where(category.id.eq(id))
                .innerJoin(category.generateTypes, QGenerateType.generateType)
                .fetch()
                .size();
    }

    @Override
    public Category getCategoryHasGenerateTypes(UUID id) {
        return new JPAQuery<Category>(entityManager)
                .from(category)
                .where(category.id.eq(id))
                .innerJoin(category.generateTypes, QGenerateType.generateType)
                .fetchJoin()
                .fetchFirst();
    }

    @Override
    public List<Category> getCategoriesFetchGenerateTypes() {
        // TODO: check fetchAll() method
        return new JPAQuery<Category>(entityManager)
                .from(category)
                .fetchAll()
                .fetch()
                .stream()
                .peek(category -> category.setGenerateTypes(category.getGenerateTypes().stream()
                        .peek(generateType -> generateType.setSources(generateType.getSources().stream()
                                .limit(3).collect(Collectors.toList()))).collect(Collectors.toList()))
                ).collect(Collectors.toList());
    }
}
