package com.mockez.domain.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.sql.Timestamp;

@Getter
@Setter
@ToString
@MappedSuperclass
//@EntityListeners(AuditingEntityListener.class)
public abstract class Base {

    @CreatedDate
    @Column(name = "created_date")
    private Timestamp createdDate;

    @CreatedBy
    @Column(name = "created_by")
    private String createdBy;

    @LastModifiedDate
    @Column(name = "modified_date")
    private Timestamp modifiedDate;

    @LastModifiedBy
    @Column(name = "modified_by")
    private String modifiedBy;
}