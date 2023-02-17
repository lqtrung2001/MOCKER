package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.QSchema;
import com.mocker.domain.model.entity.Schema;
import com.mocker.repository.customize.SchemaRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class SchemaRepositoryImpl implements SchemaRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return new JPAQuery<Schema>(entityManager)
                .from(QSchema.schema)
                .where(QSchema.schema.project.id.eq(projectId))
                .fetch();
    }
}
