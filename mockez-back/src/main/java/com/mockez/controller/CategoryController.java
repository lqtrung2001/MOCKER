package com.mockez.controller;

import com.mockez.api.CategoryApi;
import com.mockez.domain.exception.UnexpectedException;
import com.mockez.domain.model.CategoryApiBean;
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
    public ResponseEntity<List<CategoryApiBean>> getCategories() {
        return CategoryApi.super.getCategories();
    }

    @Override
    public ResponseEntity<CategoryApiBean> getCategory(String id) {
        throw new UnexpectedException("Not implemented");
//        return CategoryApi.super.getCategory(id);
    }
}
