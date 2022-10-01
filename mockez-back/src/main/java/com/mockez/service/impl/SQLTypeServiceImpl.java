package com.mockez.service.impl;

import com.mockez.domain.model.entity.SQLType;
import com.mockez.repository.SQLTypeRepository;
import com.mockez.service.SQLTypeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class SQLTypeServiceImpl implements SQLTypeService {

    private SQLTypeRepository sQLTypeRepository;

    @Override
    public List<SQLType> getSQLTypes() {
        return sQLTypeRepository.findAll();
    }
}
