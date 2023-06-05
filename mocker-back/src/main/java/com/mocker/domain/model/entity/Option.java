package com.mocker.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
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
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "BLANK", nullable = false)
    private Integer blank;

    @Column(name = "CONFIGURATION")
    private String configuration;

    @Column(name = "IS_UNIQUE")
    private boolean unique;

    @OneToOne
    @JoinColumn(nullable = false, name = "FIELD_ID", referencedColumnName = "ID")
    private Field field;

}
