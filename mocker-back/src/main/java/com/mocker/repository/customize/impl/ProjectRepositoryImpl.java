package com.mocker.repository.customize.impl;

import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.QProject;
import com.mocker.repository.customize.ProjectRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@SuppressWarnings("unused")
public class ProjectRepositoryImpl implements ProjectRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Project> findAll(Set<UUID> groupIds) {
        return new JPAQuery<Project>(entityManager)
                .from(QProject.project)
                .where(QProject.project.group.id.in(groupIds))
                .fetch();
    }
}
