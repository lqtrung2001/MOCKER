package com.mocker.controller.mapper;

import com.mocker.domain.dto.RoleDto;
import com.mocker.domain.model.entity.enumeration.Role;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-06T21:19:18+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiAbstractMapperImpl implements ApiAbstractMapper {

    @Override
    public RoleDto map(Role role) {
        if ( role == null ) {
            return null;
        }

        RoleDto roleDto;

        switch ( role ) {
            case GROUP_ADMIN: roleDto = RoleDto.GROUP_ADMIN;
            break;
            case GROUP_ASSOCIATE: roleDto = RoleDto.GROUP_ASSOCIATE;
            break;
            case USER: roleDto = RoleDto.USER;
            break;
            case ADMIN: roleDto = RoleDto.ADMIN;
            break;
            default: throw new IllegalArgumentException( "Unexpected enum constant: " + role );
        }

        return roleDto;
    }

    @Override
    public List<Role> mapRolesDtoToRoles(List<RoleDto> rolesDto) {
        if ( rolesDto == null ) {
            return null;
        }

        List<Role> list = new ArrayList<Role>( rolesDto.size() );
        for ( RoleDto roleDto : rolesDto ) {
            list.add( roleDtoToRole( roleDto ) );
        }

        return list;
    }

    protected Role roleDtoToRole(RoleDto roleDto) {
        if ( roleDto == null ) {
            return null;
        }

        Role role;

        switch ( roleDto ) {
            case GROUP_ADMIN: role = Role.GROUP_ADMIN;
            break;
            case GROUP_ASSOCIATE: role = Role.GROUP_ASSOCIATE;
            break;
            case USER: role = Role.USER;
            break;
            case ADMIN: role = Role.ADMIN;
            break;
            default: throw new IllegalArgumentException( "Unexpected enum constant: " + roleDto );
        }

        return role;
    }
}
