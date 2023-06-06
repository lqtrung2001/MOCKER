package com.mocker.controller.project;

import com.mocker.api.ProjectApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.schema.ApiSchemaMapper;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.RoleDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.service.ProjectService;
import com.mocker.service.SchemaService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class ProjectController implements ProjectApi {
    private final ApiProjectMapper apiProjectMapper;
    private final ApiProjectMapperDecorator apiProjectMapperDecorator;
    private final ApiAbstractMapper apiAbstractMapper;
    private final ApiSchemaMapper apiSchemaMapper;
    private final ProjectService projectService;
    private final SchemaService schemaService;

    @Override
    public ResponseEntity<ProjectDto> getProject(UUID id) {
        return ResponseEntity.ok(apiProjectMapperDecorator.mapFetchSchemas(projectService.getProject(id)));
    }

    @Override
    public ResponseEntity<List<ProjectDto>> getProjects(List<RoleDto> rolesDto) {
        List<Role> roles = apiAbstractMapper.mapRolesDtoToRoles(rolesDto);
        return ResponseEntity.ok(projectService.getProjects(roles)
                .stream()
                .map(apiProjectMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<ProjectDto> upsertProject(ProjectDto projectDto) {
        return ResponseEntity.ok(apiProjectMapper.map(projectService.upsert(apiProjectMapper.map(projectDto))));

    }

    @Override
    public ResponseEntity<ProjectDto> deleteProject(UUID id) {
        return ResponseEntity.ok(apiProjectMapper.map(projectService.delete(id)));
    }

    @Override
    public ResponseEntity<List<SchemaDto>> getSchemasByProject(UUID id, List<RoleDto> rolesDto) {
        List<Role> roles = apiAbstractMapper.mapRolesDtoToRoles(rolesDto);
        return ResponseEntity.ok(apiSchemaMapper.map(schemaService.getSchemasByProjectId(id, roles)));
    }
}
