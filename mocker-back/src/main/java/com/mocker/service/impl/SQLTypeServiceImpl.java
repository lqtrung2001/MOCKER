package com.mocker.service.impl;

import com.mocker.domain.model.entity.SQLType;
import com.mocker.repository.SQLTypeRepository;
import com.mocker.service.SQLTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class SQLTypeServiceImpl implements SQLTypeService {
    private final SQLTypeRepository sqlTypeRepository;

    @Override
    public List<SQLType> getSQLTypes() {
        return sqlTypeRepository.findAll();
    }

    @Override
    @Cacheable("SQLTypes")
    public List<SQLType> getSQLTypesFetchGenerateTypes() {
        return sqlTypeRepository.getSQLTypesFetchGenerateTypes();
    }
}
