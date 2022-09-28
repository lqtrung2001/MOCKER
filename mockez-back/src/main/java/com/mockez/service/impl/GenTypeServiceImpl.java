package com.mockez.service.impl;

import com.mockez.domain.model.GenType;
import com.mockez.repository.GenTypeRepository;
import com.mockez.repository.TypeRepository;
import com.mockez.service.GenTypeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class GenTypeServiceImpl implements GenTypeService {

    private GenTypeRepository genTypeRepository;
    private TypeRepository typeRepository;

    @Override
    public GenType getGenType(String id) {
        return genTypeRepository.findById(id).orElseThrow();
    }

    @Override
    public List<GenType> getGenTypesByType(String typeId) {
        return typeRepository.findById(typeId).orElseThrow().getGenTypes();
    }

    @Override
    public List<GenType> getGenTypes() {
        return genTypeRepository.findAll();
    }
}
