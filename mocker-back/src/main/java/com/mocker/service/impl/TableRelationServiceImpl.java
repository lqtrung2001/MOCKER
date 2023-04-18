package com.mocker.service.impl;

import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.repository.TableRelationRepository;
import com.mocker.service.TableRelationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.swing.text.BadLocationException;
import java.util.Optional;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class TableRelationServiceImpl implements TableRelationService {
    private final TableRelationRepository tableRelationRepository;

    @Override
    public TableRelation upsert(TableRelation tableRelation) {
        return Optional.of(tableRelationRepository.save(tableRelation))
                .orElseThrow(() -> new NotFoundException(tableRelation.getId()));
    }

    @Override
    public TableRelation delete(UUID id) {
        TableRelation tableRelation = tableRelationRepository.findById(id).orElseThrow(BadRequestException::new);
        tableRelationRepository.delete(tableRelation);
        return tableRelation;
    }
}
