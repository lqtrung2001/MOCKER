package com.mockez.repository.customize.impl;

import com.mockez.repository.customize.CategoryRepositoryCustom;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class CategoryRepositoryImpl implements CategoryRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

}
