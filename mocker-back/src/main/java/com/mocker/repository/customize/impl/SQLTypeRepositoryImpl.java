package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.QSQLType;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.repository.customize.SQLTypeRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class SQLTypeRepositoryImpl implements SQLTypeRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<SQLType> getSQLTypesFetchGenerateTypes() {
        List<SQLType> SQLTypes = new JPAQuery<SQLType>(entityManager)
                .from(QSQLType.sQLType).fetch();
//        List<SQLType> SQLTypes = new JPAQuery<SQLType>(entityManager)
//                .from(QSQLType.sQLType)
//                .innerJoin(QSQLType.sQLType.generateTypes, QGenerateType.generateType).fetchJoin()
//                .fetch();
//        SQLTypes.forEach(sqlType -> {
//            sqlType.getGenerateTypes().forEach(generateType -> {
//                generateType.setSources(new JPAQuery<Source>(entityManager)
//                        .from(QSource.source)
//                        .where(QSource.source.generateType.id.eq(generateType.getId()))
//                        .limit(3)
//                        .fetch());
//            });
//        });
        return SQLTypes;
    }
}
