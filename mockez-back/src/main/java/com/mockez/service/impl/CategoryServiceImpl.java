package com.mockez.service.impl;

import com.mockez.domain.exception.NotFoundException;
import com.mockez.domain.model.entity.Category;
import com.mockez.repository.CategoryRepository;
import com.mockez.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private CategoryRepository categoryRepository;

    @Override
    public List<Category> getCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public Category getCategory(UUID id) {
        return categoryRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Resource not found"));
    }
}
