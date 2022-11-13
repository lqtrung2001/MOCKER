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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.util.List;
import java.util.UUID;

import static java.util.Collections.emptyList;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
@Table(name = "sql_type", uniqueConstraints = {
        @UniqueConstraint(name = "sql_type_code_unique_constraint", columnNames = "code")
})
public class SQLType extends Base {

    @Id
    @Column(updatable = false)
    private UUID id;

    @Column(nullable = false)
    private String code;

    @Column(nullable = false, length = 1000)
    private String description;

    @ManyToMany
    @ToString.Exclude
    @JoinTable(
            name = "sql_type_generate_type",
            joinColumns = @JoinColumn(name = "sql_type_id"),
            inverseJoinColumns = @JoinColumn(name = "generate_type_id")
    )
    private List<GenerateType> generateTypes = emptyList();
}
