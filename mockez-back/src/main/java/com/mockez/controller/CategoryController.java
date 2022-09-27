package com.mockez.controller;

import com.mockez.api.CategoryApi;
import com.mockez.domain.model.Category;
import com.mockez.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class CategoryController implements CategoryApi {

    private CategoryService categoryService;

    @Override
    public ResponseEntity<List<Category>> getCategories() {
        return ResponseEntity.ok(categoryService.getCategories());
    }

    @Override
    public ResponseEntity<Category> getCategory(String id) {
        return ResponseEntity.ok(categoryService.getCategory(id));
    }
}
