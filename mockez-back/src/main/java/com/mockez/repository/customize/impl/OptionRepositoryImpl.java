package com.mockez.repository.customize.impl;

import com.mockez.domain.model.entity.Option;
import com.mockez.repository.customize.OptionRepositoryCustom;
import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

import static com.mockez.domain.model.entity.QOption.option;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class OptionRepositoryImpl implements OptionRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Option> findAllByFieldIds(List<UUID> fieldIds) {
        return new JPAQuery<Option>(entityManager)
                .from(option)
                .where(option.field.id.in(fieldIds))
                .fetch();
    }
}
