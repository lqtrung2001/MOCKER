import { Component, Injector, Input, OnChanges, OnDestroy, SimpleChanges } from '@angular/core';
import { CdkDragMove } from '@angular/cdk/drag-drop';
import { FieldModel } from '@core/domain/model/field.model';
import { TableRelationModel } from '@core/domain/model/table-relation.model';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import {
  RelationConfigModal,
  RelationConfigModalOptions
} from '@app/component/schema/modal/relation-config/relation-config.modal';
import { TableRelationService } from '@core/service/table-relation.service';
import { SchemaService } from '@app/core/service/schema.service';
import { SchemaModel } from '@core/domain/model/schema.model';
import { TableModel } from '@core/domain/model/table.model';
import { DrawUtil, RelationLine } from '@core/util/draw.util';
import { RelationTypeEnum } from '@core/domain/enum/relation-type.enum';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */


@Component({
  selector: 'moc-diagram',
  templateUrl: 'diagram.component.html',
  styleUrls: ['diagram.component.scss']
})
export class DiagramComponent extends AbstractSharedComponent implements OnChanges, OnDestroy {
  @Input() schema: SchemaModel;
  current: FieldModel | undefined;
  relationLines: RelationLine[] = [];

  constructor(
    injector: Injector,
    private tableRelationService: TableRelationService,
    private schemaService: SchemaService
  ) {
    super(injector);
  }

  ngOnChanges(changes: SimpleChanges): void {
    if (this.schema) {
      this.schemaService.getTablesBySchema(this.schema.id)
        .subscribe((tables: TableModel[]): void => {
          this.schema.tables = tables;
          this.schemaService.getTableRelationsBySchema(this.schema.id)
            .subscribe((tableRelations: TableRelationModel[]): void => {
              tableRelations.forEach((tableRelation: TableRelationModel): void => {
                const relationLine = DrawUtil.newRelationLine(tableRelation);
                if (relationLine) {
                  this.relationLines.push(relationLine);
                }
              });
              this.relationLines.forEach((relationLine: RelationLine) => relationLine.leaderLine.position());
            });
        });
    }
  }

  dragMoved(event: CdkDragMove) {
    // console.log(event);
    this.relationLines.forEach((relationLine: RelationLine): void => {
      const socket: string = DrawUtil.getSocketPosition(relationLine.tableRelation.source.id, relationLine.tableRelation.target.id);
      relationLine.leaderLine.setOptions({ startSocket: socket, endSocket: socket });
      relationLine.leaderLine.position();
    });
  }

  relationMapping(field: FieldModel): void {
    if (this.current) {
      if (this.current.id === field.id) {
        this.modalProvider.showWarning({
          detail: `These fields <b>${this.current.name}</b> and <b>${field.name}</b> are same, so can't be mapped each other.`
        });
        this.current = undefined;
        return;
      }
      // Default options
      let relationConfigModalOptions: RelationConfigModalOptions = {
        source: this.current,
        target: field,
        description: StringUtil.EMPTY,
        relationType: RelationTypeEnum.ONE_TO_MANY
      };
      const relationLineExisted: RelationLine | undefined = this.isMapped(field);
      if (relationLineExisted) {
        relationConfigModalOptions = {
          ...relationConfigModalOptions,
          ...relationLineExisted.tableRelation
        };
      }
      this.modalService.open(RelationConfigModal, relationConfigModalOptions)
        .subscribe((result: TableRelationModel) => {
          if (result) {
            this.tableRelationService.upsertEntity(result)
              .subscribe((tableRelation: TableRelationModel): void => {
                if (relationLineExisted) {
                  this.relationLines
                    .forEach((relationLine: RelationLine, index: number): void => {
                      if (relationLine.tableRelation.id === relationLineExisted.tableRelation.id) {
                        relationLine.leaderLine.remove();
                        this.relationLines.splice(index, index + 1);
                      }
                    });
                }
                this.relationLines.push(DrawUtil.newRelationLine(tableRelation));
                this.relationLines[this.relationLines.length - 1].leaderLine.position();
                this.toastrProvider.showSuccess({
                  detail: `Success config mapping from <b>${tableRelation.source.name}</b> to <b>${tableRelation.target.name}</b>`
                });
                this.current = undefined;
              });
          }
        });
    } else {
      this.current = field;
      this.toastrProvider.showInformation({
        timeout: 1,
        detail: `This current selected field is <b>${field.name}</b>`
      });
    }
  }

  isMapped(target: FieldModel): RelationLine | undefined {
    return this.relationLines
      .find((relationLine: RelationLine): boolean =>
        (relationLine.tableRelation.source.id === this.current?.id && relationLine.tableRelation.target.id === target.id)
        || (relationLine.tableRelation.target.id === this.current?.id && relationLine.tableRelation.source.id === target.id));
  }

  get foreignKeys(): string[] {
    return this.relationLines.map((relationLine: RelationLine): TableRelationModel => relationLine.tableRelation)
      .map((tableRelation: TableRelationModel): string[] => {
        switch (tableRelation.relationType) {
          case RelationTypeEnum.ONE_TO_ONE:
            return [tableRelation.source.id, tableRelation.target.id];
          case RelationTypeEnum.ONE_TO_MANY:
            return [tableRelation.source.id];
          case RelationTypeEnum.MANY_TO_ONE:
            return [tableRelation.target.id];
          default:
            return [];
        }
      }).reduce((previous, current) => [...previous, ...current], []);
  }

  ngOnDestroy(): void {
    this.relationLines.forEach((leaderLine: any) => leaderLine.remove());
  }

}
