package com.mocker.controller.mapper;

import com.mocker.domain.model.entity.enumeration.Role;
import org.mapstruct.Mapper;
import com.mocker.domain.dto.RoleDto;

import java.util.List;

/**
 * @author Luong Quoc Trung
 */

@Mapper(componentModel = "spring")
public interface ApiAbstractMapper {

    List<Role> mapRolesDtoToRoles(List<RoleDto> rolesDto);
}
