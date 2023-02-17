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
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
@Table(uniqueConstraints = {
        @UniqueConstraint(name = "GENERATE_TYPE_CODE_UNIQUE", columnNames = "CODE")
}, name = "GENERATE_TYPE")
public class GenerateType extends Base {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "CODE", nullable = false)
    private String code;

    @Column(name = "DESCRIPTION", nullable = false, length = 1000)
    private String description;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "GENERATE_TYPE_CATEGORY_ID_FK"))
    private Category category = Category.builder().build();

    @ToString.Exclude
    @OneToMany(mappedBy = "generateType")
    private List<Source> sources = emptyList();

    @ToString.Exclude
    @ManyToMany(mappedBy = "generateTypes")
    private List<SQLType> sqlTypes = emptyList();

}
