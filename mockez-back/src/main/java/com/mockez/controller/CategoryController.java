package com.mockez.controller;

import com.mockez.api.CategoryApi;
import com.mockez.controller.maper.ApiCategoryMapper;
import com.mockez.domain.model.CategoryDto;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api")
public class CategoryController implements CategoryApi {

    @Override
    public ResponseEntity<List<CategoryDto>> getCategories() {
        return CategoryApi.super.getCategories();
    }

    @Override
    public ResponseEntity<CategoryDto> getCategory(String id) {
        return CategoryApi.super.getCategory(id);
    }
}
