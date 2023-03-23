package com.mocker.controller.sqlType;

import com.mocker.api.SqlTypeApi;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.service.SQLTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class SQLTypeController implements SqlTypeApi {

    private final ApiSQLTypeMapper apiSQLTypeMapper;
    private final SQLTypeService sqlTypeService;

    @Override
    public ResponseEntity<List<SQLTypeDto>> getSQLTypes() throws NotFoundException {
        return ResponseEntity.ok(sqlTypeService.getSQLTypesFetchGenerateTypes().stream()
                .map(apiSQLTypeMapper::map).collect(Collectors.toList()));
    }
}
