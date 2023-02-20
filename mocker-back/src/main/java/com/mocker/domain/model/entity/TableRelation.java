package com.mocker.domain.model.entity;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.persistence.Table;
import java.util.UUID;

/**
 * @author Luong Quoc Trung,
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[TABLE_RELATION]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class TableRelation {
    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "SOURCE", nullable = false)
    private UUID source;

    @Column(name = "TARGET", nullable = false)
    private UUID target;

    @Column(name = "NAME")
    private String name;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "RELATION_TYPE_TABLE_RELATION_FK"))
    private RelationType relationType = RelationType.builder().build();
}
