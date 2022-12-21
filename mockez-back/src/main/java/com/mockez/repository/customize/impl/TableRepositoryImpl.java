package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.Field;
import com.mockez.domain.model.entity.QField;
import com.mockez.domain.model.entity.Table;
import com.mockez.repository.customize.TableRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import static com.mockez.domain.model.entity.QField.field;
import static com.mockez.domain.model.entity.QTable.table;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class TableRepositoryImpl implements TableRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;
    JPAQueryFactory queryFactory;

    @Override
    public List<Table> findAllBySchema(UUID schemaId) {
        return new JPAQuery<Table>(entityManager)
                .from(table)
                .where(table.schema.id.eq(schemaId))
                .fetch();
    }

    @Override
    public Table findOneWithEagerFields(UUID id) {
        return new JPAQuery<Table>(entityManager)
                .from(table)
                .where(table.id.eq(id))
                .leftJoin(table.fields, field).fetchJoin()
                .fetchOne();
    }

    @Override
    public UUID saveOrUpdateTable(Table entity) {
        return null;
    }
}
