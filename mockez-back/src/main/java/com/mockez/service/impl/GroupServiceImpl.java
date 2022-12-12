package com.mockez.service.impl;

import com.mockez.domain.model.entity.Group;
import com.mockez.repository.GroupRepository;
import com.mockez.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class GroupServiceImpl implements GroupService {

    private final GroupRepository groupRepository;

    @Override
    public List<Group> getGroupsWithAccess(UUID userId) {
        return groupRepository.findAllWithAccess(userId);
    }
}
