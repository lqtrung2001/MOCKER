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
import javax.persistence.Table;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[OPTION]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class Option extends Base {

    @Id
    @Column(name = "FIELD_ID", nullable = false, updatable = false)
    private UUID id;

    @Column(name = "BLANK", nullable = false)
    private Integer blank;

    @Column(name = "CONFIGURATION")
    private String configuration;

    @OneToOne
    @JoinColumn(nullable = false, name = "field_id", referencedColumnName = "id")
    private Field field = Field.builder().build();

}
