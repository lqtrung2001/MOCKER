package com.mocker.service.impl;

import com.mocker.domain.model.entity.TableRelation;
import com.mocker.repository.TableRelationRepository;
import com.mocker.service.TableRelationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.UUID;

/**
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class TableRelationServiceImpl implements TableRelationService {
    private final TableRelationRepository tableRelationRepository;

    @Override
    public TableRelation upsert(TableRelation tableRelation) {
        return tableRelationRepository.save(tableRelation);
    }

    @Override
    public TableRelation delete(UUID id) {
        TableRelation tableRelation = tableRelationRepository.findById(id).orElseThrow();
        tableRelationRepository.delete(tableRelation);
        return tableRelation;
    }
}
