package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import static javax.persistence.FetchType.LAZY;
import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class Source extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private String id;

    @Column(nullable = false)
    private String value;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "source_generate_type_id_fk"))
    private GenerateType generateType;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Source source)) return false;

        if (!getId().equals(source.getId())) return false;
        if (!getValue().equals(source.getValue())) return false;
        return getGenerateType().equals(source.getGenerateType());
    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + getValue().hashCode();
        result = 31 * result + getGenerateType().hashCode();
        return result;
    }
}
