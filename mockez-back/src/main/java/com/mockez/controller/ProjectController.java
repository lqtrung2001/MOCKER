package com.mockez.controller;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.ProjectDto;
import com.mockez.service.ProjectService;
import lombok.AllArgsConstructor;
import com.mockez.api.ProjectApi;
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
    public ResponseEntity<List<ProjectDto>> getProjectByGroupId(UUID groupId) {
        return ResponseEntity.ok(projectService.getProjectsByGroup(groupId)
                .stream().map(apiAbstractMapper::map).collect(Collectors.toList()));
    }
}
