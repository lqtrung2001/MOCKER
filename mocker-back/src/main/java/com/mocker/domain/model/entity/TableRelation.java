package com.mocker.domain.model.entity;

import com.mocker.domain.model.entity.enumeration.Gender;
import com.mocker.domain.model.entity.enumeration.RelationType;
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
public class TableRelation extends Base {
    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "RelationType", nullable = false)
    @Enumerated(EnumType.STRING)
    private RelationType relationType;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "TABLE_RELATION_SOURCE_FIELD_FK"))
    private Field source = Field.builder().build();

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "TABLE_RELATION_TARGET_FIELD_FK"))
    private Field target = Field.builder().build();

}
