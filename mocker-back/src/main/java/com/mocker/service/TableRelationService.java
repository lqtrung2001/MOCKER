package com.mocker.service;

import com.mocker.domain.model.entity.TableRelation;

import java.util.UUID;

/**
 * @author Do Quoc Viet
 */

public interface TableRelationService {
    TableRelation upsert(TableRelation tableRelation);
    TableRelation delete(UUID id);
}
