package com.mocker.controller.tableRelation;

import com.mocker.api.TableRelationApi;
import com.mocker.domain.dto.TableRelationDto;
import com.mocker.service.TableRelationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1")
public class TableRelationController implements TableRelationApi {
    private final ApiTableRelationMapper apiTableRelationMapper;
    private final TableRelationService tableRelationService;

    @Override
    public ResponseEntity<TableRelationDto> upsertTableRelation(TableRelationDto tableRelationDto) {
        return ResponseEntity.ok(apiTableRelationMapper.map(tableRelationService.upsert(apiTableRelationMapper.map(tableRelationDto))));
    }
}
