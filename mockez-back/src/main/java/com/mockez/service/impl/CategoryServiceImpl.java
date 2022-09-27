package com.mockez.service.impl;

import com.mockez.domain.exception.NotFoundException;
import com.mockez.domain.model.Category;
import com.mockez.repository.CategoryRepository;
import com.mockez.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private CategoryRepository categoryRepository;

    @Override
    public List<Category> getCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public Category getCategory(String id) {
        return categoryRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Resource not found"));
    }
}
