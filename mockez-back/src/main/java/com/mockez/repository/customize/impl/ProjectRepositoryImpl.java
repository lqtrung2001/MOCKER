package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.Project;
import com.mockez.domain.model.entity.QProject;
import com.mockez.repository.customize.ProjectRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

public class ProjectRepositoryImpl implements ProjectRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Project> findAllByGroup(UUID groupId) {
        return new JPAQuery<Project>(entityManager)
                .from(QProject.project)
                .where(QProject.project.group.id.eq(groupId))
                .fetch();
    }
}
