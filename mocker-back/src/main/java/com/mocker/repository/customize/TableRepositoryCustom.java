package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Table;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface TableRepositoryCustom {

    List<Table> findAllBySchema(UUID schemaId);

    Table findOneWithEagerFields(UUID id);

}
