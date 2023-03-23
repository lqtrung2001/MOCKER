package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Table;
import com.mocker.repository.customize.TableRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

import static com.mocker.domain.model.entity.QField.field;
import static com.mocker.domain.model.entity.QTable.table;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@SuppressWarnings("unused")
public class TableRepositoryImpl implements TableRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Table> findAllBySchemaFetchFields(UUID schemaId) {
        return new JPAQuery<Table>(entityManager)
                .from(table)
                .where(table.schema.id.eq(schemaId))
                .leftJoin(table.fields, field).fetchJoin()
                .distinct()
                .fetch();
    }

    @Override
    public Table findOneFetchFields(UUID id) {
        return new JPAQuery<Table>(entityManager)
                .from(table)
                .where(table.id.eq(id))
                .leftJoin(table.fields, field).fetchJoin()
                .fetchOne();
    }

}
