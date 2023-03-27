package com.mocker.domain.model.entity.enumeration;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

/**
 * @author Luong Quoc Trung
 */

@Getter
@RequiredArgsConstructor
public enum RelationType {

    ONE_TO_ONE("ONE_TO_ONE"),
    ONE_TO_MANY("ONE_TO_MANY"),
    MANY_TO_ONE("MANY_TO_ONE"),
    MANY_TO_MANY("MANY_TO_MANY");

    private final String value;

    public static Boolean isRelationOneTo(RelationType relationType) {
        return RelationType.ONE_TO_MANY.equals(relationType) || RelationType.ONE_TO_ONE.equals(relationType);
    }

}
