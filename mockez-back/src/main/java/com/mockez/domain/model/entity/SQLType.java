package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

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

import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@Builder
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
    private String id;

    @Column(nullable = false)
    private String code;

    @Column(nullable = false)
    private String description;

    @ManyToMany
    @JoinTable(
            name = "field_generate_type",
            joinColumns = @JoinColumn(name = "field_id"),
            inverseJoinColumns = @JoinColumn(name = "generate_id")
    )
    @ToString.Exclude
    private List<GenerateType> generateTypes = new ArrayList<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof SQLType sqlType)) return false;

        if (!getId().equals(sqlType.getId())) return false;
        if (!getCode().equals(sqlType.getCode())) return false;
        return getDescription().equals(sqlType.getDescription());
    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + getCode().hashCode();
        result = 31 * result + getDescription().hashCode();
        return result;
    }
}
