package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.repository.customize.TableRelationCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

import static com.mocker.domain.model.entity.QTableRelation.tableRelation;

/**
 * @author Do Quoc Viet
 */

@SuppressWarnings("unused")
public class TableRelationRepositoryImpl implements TableRelationCustom {
    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<TableRelation> findSourceAndTargetRelationsByField(Field field) {
        return new JPAQuery<TableRelation>(entityManager)
                .from(tableRelation)
                .where(tableRelation.source.id.eq(field.getId())
                        .or(tableRelation.target.id.eq(field.getId())))
                .fetch();
    }
}
