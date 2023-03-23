import { RelationTypeEnum } from '@core/domain/enum/relation-type.enum';

/**
 * @author Do Quoc Viet
 */

export class RelationTypeUtil {
  static fromValue(value: string): RelationTypeEnum {
    switch (value) {
      case RelationTypeEnum.ONE_TO_ONE:
        return RelationTypeEnum.ONE_TO_ONE;
      case RelationTypeEnum.ONE_TO_MANY:
        return RelationTypeEnum.ONE_TO_MANY;
      case RelationTypeEnum.MANY_TO_ONE:
        return RelationTypeEnum.MANY_TO_ONE;
      case RelationTypeEnum.MANY_TO_MANY:
        return RelationTypeEnum.MANY_TO_MANY;
      default:
        throw new Error('Not implemented for this relation type');
    }
  }

  static getSign(value: RelationTypeEnum): string {
    switch (value) {
      case RelationTypeEnum.ONE_TO_ONE:
        return '1:1';
      case RelationTypeEnum.ONE_TO_MANY:
        return '1:M';
      case RelationTypeEnum.MANY_TO_ONE:
        return 'M:1';
      case RelationTypeEnum.MANY_TO_MANY:
        return 'M:M';
      default:
        throw new Error('Not implemented for this relation type');
    }
  }

  static getLabel(value: RelationTypeEnum): string {
    switch (value) {
      case RelationTypeEnum.ONE_TO_ONE:
        return 'ONE TO ONE';
      case RelationTypeEnum.ONE_TO_MANY:
        return 'ONE TO MANY';
      case RelationTypeEnum.MANY_TO_ONE:
        return 'MANY TO ONE';
      case RelationTypeEnum.MANY_TO_MANY:
        return 'MANY TO MANY';
      default:
        throw new Error('Not implemented for this relation type');
    }
  }

}
