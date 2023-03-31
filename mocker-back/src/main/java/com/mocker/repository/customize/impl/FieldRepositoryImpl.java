package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Field;
import com.mocker.repository.customize.FieldRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

import static com.mocker.domain.model.entity.QField.field;
import static com.mocker.domain.model.entity.QTableRelation.tableRelation;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class FieldRepositoryImpl implements FieldRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Field> getFieldsByTable(UUID tableId) {
        return new JPAQuery<Field>(entityManager)
                .from(field)
                .where(field.table.id.eq(tableId))
                .leftJoin(field.tableRelationSources, tableRelation).fetchJoin()
                .leftJoin(field.tableRelationTargets, tableRelation).fetchJoin()
                .distinct()
                .fetch();
    }
}
