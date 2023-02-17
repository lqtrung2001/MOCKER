package com.mocker.domain.model.entity.composite_key;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Data
@Embeddable
@SuperBuilder
@NoArgsConstructor
public class GroupMemberPK implements Serializable {

    @Column(nullable = false)
    private UUID groupId;

    @Column(nullable = false)
    private UUID userId;
}
