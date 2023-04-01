package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.TableRelation;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

public interface TableRelationCustom {
    List<TableRelation> findSourceAndTargetRelationsByField(Field field);
}
