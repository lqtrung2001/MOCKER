package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
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
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "SUMMARY", nullable = false, length = 1000)
    private String summary;

    @Column(name = "DESCRIPTION", nullable = false, length = 4096)
    private String description;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "PROJECT_GROUP_FK"))
    private Group group = Group.builder().build();

    @ToString.Exclude
    @OneToMany(mappedBy = "project")
    private List<Schema> schemas = emptyList();
}
