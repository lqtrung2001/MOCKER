package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Option;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface OptionRepositoryCustom {

    List<Option> findAllByFieldIds(List<UUID> fieldIds);

}
