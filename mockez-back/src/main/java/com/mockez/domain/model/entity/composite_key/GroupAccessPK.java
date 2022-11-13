package com.mockez.domain.model.entity.composite_key;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.UUID;

@Data
@Embeddable
public class GroupAccessPK implements Serializable {

    @Column(nullable = false)
    private UUID groupId;

    @Column(nullable = false)
    private UUID userId;
}
