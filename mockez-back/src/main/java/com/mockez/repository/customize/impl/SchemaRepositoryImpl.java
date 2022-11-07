package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.QProject;
import com.mockez.domain.model.entity.QSchema;
import com.mockez.domain.model.entity.Schema;
import com.mockez.repository.customize.SchemaRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

public class SchemaRepositoryImpl implements SchemaRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return new JPAQuery<Schema>(entityManager)
                .from(QProject.project)
                .where(QProject.project.id.eq(projectId))
                .innerJoin(QProject.project.schemas, QSchema.schema)
                .fetchJoin()
                .fetch();
    }
}