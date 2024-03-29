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
        @UniqueConstraint(name = "SQL_TYPE_CODE_UNIQUE_CONSTRAINT", columnNames = "CODE")
}, name = "[SQL_TYPE]")
public class SQLType extends Base {

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

    @ManyToMany
    @ToString.Exclude
    @JoinTable(
            name = "SQL_TYPE_GENERATE_TYPE",
            joinColumns = @JoinColumn(name = "SQL_TYPE_ID"),
            inverseJoinColumns = @JoinColumn(name = "GENERATE_TYPE_ID")
    )
    private List<GenerateType> generateTypes = emptyList();
}
