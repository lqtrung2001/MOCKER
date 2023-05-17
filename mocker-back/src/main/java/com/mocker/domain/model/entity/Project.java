package com.mocker.domain.model.entity;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Table;
import javax.persistence.*;
import java.util.List;
import java.util.UUID;

import static java.util.Collections.emptyList;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[PROJECT]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class Project extends Base {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "DESCRIPTION", length = 4096)
    private String description;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "PROJECT_GROUP_FK"))
    private Group group = Group.builder().build();

    @ToString.Exclude
    @OneToMany(mappedBy = "project")
    private List<Schema> schemas = emptyList();
}
