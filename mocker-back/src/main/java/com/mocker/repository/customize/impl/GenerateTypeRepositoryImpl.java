package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Source;
import com.mocker.repository.customize.GenerateTypeRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

import static com.mocker.domain.model.entity.QSource.source;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class GenerateTypeRepositoryImpl implements GenerateTypeRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Source> getSourcesByGenerateType(GenerateType generateType) {
        return new JPAQuery<Source>(entityManager)
                .from(source)
                .where(source.generateType.id.eq(generateType.getId()))
                .fetch();
    }
}
