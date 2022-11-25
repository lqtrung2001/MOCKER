package com.mockez.controller;

import com.mockez.api.ProjectApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.ProjectDto;
import com.mockez.service.ProjectService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class ProjectController implements ProjectApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final ProjectService projectService;

    @Override
    public ResponseEntity<ProjectDto> getProject(UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.map(projectService.getProject(id)));
    }

    @Override
    public ResponseEntity<List<ProjectDto>> getProjects() {
        return ResponseEntity.ok(projectService.getProjectsCurrentAccess()
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }
}
