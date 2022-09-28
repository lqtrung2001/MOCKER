package com.mockez.service.impl;

import com.mockez.domain.model.Type;
import com.mockez.repository.TypeRepository;
import com.mockez.service.TypeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class TypeServiceImpl implements TypeService {

    private TypeRepository typeRepository;

    @Override
    public List<Type> getTypes() {
        return typeRepository.findAll();
    }
}
