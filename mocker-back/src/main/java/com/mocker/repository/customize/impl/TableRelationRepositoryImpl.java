package com.mocker.repository.customize.impl;

import com.mocker.repository.customize.TableRelationCustom;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * @author Do Quoc Viet
 */

@SuppressWarnings("unused")
public class TableRelationRepositoryImpl implements TableRelationCustom {
    @PersistenceContext
    EntityManager entityManager;
}
