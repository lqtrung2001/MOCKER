package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;
import java.util.UUID;

import static java.util.Collections.emptyList;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[group]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class Group extends Base {

    @Id
    @Column(updatable = false)
    private UUID id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, length = 1000)
    private String description;

    @ToString.Exclude
    @OneToMany(mappedBy = "group")
    private List<User> users = emptyList();

    @ToString.Exclude
    @OneToMany(mappedBy = "group")
    private List<Project> projects = emptyList();

    @ToString.Exclude
    @OneToMany(mappedBy = "group")
    private List<GroupAccess> groupAccesses = emptyList();

}
