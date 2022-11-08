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
import javax.persistence.OneToOne;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class Option extends Base {

    @Id
    @Column(name = "field_id", nullable = false, updatable = false)
    private UUID id;

    @Column(nullable = false)
    private Integer blank;

    @OneToOne
    @JoinColumn(nullable = false, name = "field_id", referencedColumnName = "id")
    private Field field;

}
