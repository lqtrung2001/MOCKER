package com.mockez.service.impl;

import com.mockez.domain.model.entity.Category;
import com.mockez.repository.CategoryRepository;
import com.mockez.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    @Override
    public List<Category> getCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public Category getCategoryHasGenerateTypes(UUID id) {
        return categoryRepository.getCategoryHasGenerateTypes(id);
    }

    @Override
    public Integer getGenerateTypesCount(UUID id) {
        return categoryRepository.getGenerateTypesCount(id);
    }
}
