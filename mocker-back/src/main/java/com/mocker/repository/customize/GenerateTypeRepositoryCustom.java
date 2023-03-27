package com.mocker.repository.customize;

import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Source;

import java.util.List;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GenerateTypeRepositoryCustom {
    List<Source> getSourcesByGenerateType(GenerateType generateType);
}
