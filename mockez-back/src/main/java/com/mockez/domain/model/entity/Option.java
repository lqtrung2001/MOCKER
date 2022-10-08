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
import javax.persistence.OneToOne;

import java.util.UUID;

import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class Option extends Base {

    @Id
    @Setter(NONE)
    @Column(name = "field_id", nullable = false, updatable = false)
    private UUID id;

    @Column(nullable = false)
    private Integer blank;

    @Column(nullable = false)
    private String algorithm;

    @OneToOne
    @JoinColumn(nullable = false, name = "field_id", referencedColumnName = "id")
    private Field field;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Option option)) return false;

        if (!getBlank().equals(option.getBlank())) return false;
        if (!getAlgorithm().equals(option.getAlgorithm())) return false;
        return getField().equals(option.getField());
    }

    @Override
    public int hashCode() {
        int result = getBlank().hashCode();
        result = 31 * result + getAlgorithm().hashCode();
        result = 31 * result + getField().hashCode();
        return result;
    }
}
