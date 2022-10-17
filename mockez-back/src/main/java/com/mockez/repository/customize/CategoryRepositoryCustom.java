package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Category;

import java.util.UUID;

public interface CategoryRepositoryCustom {
    Integer getGenerateTypesCount(UUID id);

    Category getCategoryHasGenerateTypes(UUID id);

}
