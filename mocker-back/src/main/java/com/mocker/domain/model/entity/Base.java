package com.mocker.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;
import java.time.OffsetDateTime;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Getter
@Setter
@ToString
@MappedSuperclass
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder(toBuilder = true)
@EntityListeners(AuditingEntityListener.class)
public abstract class Base {

    @CreatedDate
    @Column(name = "CREATED_DATE", nullable = false)
    private OffsetDateTime createdDate;

    @CreatedBy
    @Column(name = "CREATED_BY", nullable = false)
    private String createdBy;

    @Column(name = "CREATED_BY_GROUP")
    private String createdByGroup;

    @LastModifiedDate
    @Column(name = "MODIFIED_DATE", nullable = false)
    private OffsetDateTime modifiedDate;

    @LastModifiedBy
    @Column(name = "MODIFIED_BY", nullable = false)
    private String modifiedBy;

    @Column(name = "MODIFIED_BY_GROUP")
    private String modifiedByGroup;

    @Version
    @Column(name = "VERSION", nullable = false)
    private Integer version;
}