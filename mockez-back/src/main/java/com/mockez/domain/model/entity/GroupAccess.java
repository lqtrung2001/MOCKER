package com.mockez.domain.model.entity;

import com.mockez.domain.model.entity.composite.GroupAccessPK;
import com.mockez.domain.model.entity.enumeration.Role;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "group_access")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class GroupAccess extends Base {

    @EmbeddedId
    private GroupAccessPK id;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Role role;

    // user

    // group

}
