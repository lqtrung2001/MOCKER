package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
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
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import static javax.persistence.FetchType.LAZY;
import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@Table(name = "sql_type", uniqueConstraints = {
        @UniqueConstraint(name = "sql_type_code_unique_constraint", columnNames = "code")
})
public class SQLType extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private UUID id;

    @Column(nullable = false)
    private String code;

    @Column(nullable = false, length = 1000)
    private String description;

    @ToString.Exclude
    @ManyToMany
    @JoinTable(
            name = "field_generate_type",
            joinColumns = @JoinColumn(name = "field_id"),
            inverseJoinColumns = @JoinColumn(name = "generate_id")
    )
    private List<GenerateType> generateTypes = new ArrayList<>();
}
