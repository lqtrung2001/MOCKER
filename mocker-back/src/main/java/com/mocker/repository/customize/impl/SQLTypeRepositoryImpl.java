package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.QGenerateType;
import com.mocker.domain.model.entity.QSQLType;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.repository.customize.SQLTypeRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Luong Quoc Trung
 */

@SuppressWarnings("unused")
public class SQLTypeRepositoryImpl implements SQLTypeRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<SQLType> getSQLTypesFetchGenerateTypes() {
        return new JPAQuery<SQLType>(entityManager)
                .from(QSQLType.sQLType)
                .leftJoin(QSQLType.sQLType.generateTypes, QGenerateType.generateType).fetchJoin()
                .fetch();
    }
}
