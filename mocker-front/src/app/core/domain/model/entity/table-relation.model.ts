import { BaseModel } from '@core/domain/model/entity/base.model';
import { FieldModel } from '@core/domain/model/entity/field.model';
import { RelationTypeEnum } from '@core/domain/enum/relation-type.enum';

/**
 * @author Do Quoc Viet
 */

export class TableRelationModel extends BaseModel {
  public id: string;
  public source: FieldModel;
  public target: FieldModel;
  public description: string;
  public relationType: RelationTypeEnum;
}
