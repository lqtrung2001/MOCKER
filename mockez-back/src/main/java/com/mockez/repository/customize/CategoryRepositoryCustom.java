package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Category;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface CategoryRepositoryCustom {
    Integer getGenerateTypesCount(UUID id);

    Category getCategoryHasGenerateTypes(UUID id);

}
