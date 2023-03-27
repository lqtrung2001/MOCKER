package com.mocker.domain.model.entity;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Table;
import javax.persistence.*;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import static java.util.Collections.emptyList;
import static java.util.Collections.emptySet;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "FIELD")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class Field extends Base {

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

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(name = "SQL_TYPE_ID", nullable = true, foreignKey = @ForeignKey(name = "FIELD_SQL_TYPE_ID_FK"))
    private SQLType sqlType = SQLType.builder().build();

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "FIELD_GENERATE_TYPE_ID_FK"))
    private GenerateType generateType = GenerateType.builder().build();

    @PrimaryKeyJoinColumn
    @OneToOne(mappedBy = "field")
    private Option option = Option.builder().build();

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "FIELD_TABLE_ID_FK"))
    private com.mocker.domain.model.entity.Table table = com.mocker.domain.model.entity.Table.builder().build();

    @ToString.Exclude
    @OneToMany(mappedBy = "source")
    private Set<TableRelation> tableRelationSources = emptySet();

    @ToString.Exclude
    @OneToMany(mappedBy = "target")
    private Set<TableRelation> tableRelationTargets = emptySet();

}
