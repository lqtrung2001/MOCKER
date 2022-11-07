package com.mockez.domain.model.entity.composite;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serial;
import java.io.Serializable;
import java.util.UUID;

@Data
@Embeddable
public class GroupAccessPK implements Serializable {

    @Serial
    private static final long serialVersionUID = -4766406047469968465L;

    @Column(nullable = false)
    private UUID groupId;

    @Column(nullable = false)
    private UUID userId;
}
