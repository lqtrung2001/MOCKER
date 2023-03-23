package com.mocker.service;

import com.mocker.domain.model.entity.TableRelation;

/**
 * @author Do Quoc Viet
 */

public interface TableRelationService {
    TableRelation upsert(TableRelation tableRelation);
}
