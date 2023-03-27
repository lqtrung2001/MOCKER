import { Component, Injector, Input, OnChanges, OnDestroy, SimpleChanges } from '@angular/core';
import { FieldModel } from '@core/domain/model/field.model';
import { TableRelationModel } from '@core/domain/model/table-relation.model';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import {
  RelationConfigModal,
  RelationConfigModalClosedOptions,
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

  dragMoved(table: TableModel) {
    this.relationLines.forEach((relationLine: RelationLine): void => {
      const containRelation: boolean = table.fields
        .map((field: FieldModel): string => field.id)
        .some((id: string): boolean => id === relationLine.tableRelation.source.id || id === relationLine.tableRelation.target.id);
      if (containRelation) {
        const socket: string = DrawUtil.getSocketPosition(relationLine.tableRelation.source.id, relationLine.tableRelation.target.id);
        relationLine.leaderLine.setOptions({ startSocket: socket, endSocket: socket });
        relationLine.leaderLine.position();
      }
    });
  }

  relationMapping(field: FieldModel): void {
    if (this.current) {
      if (this.current.id === field.id) {
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
        .subscribe((relationConfigModalCloseOptions: RelationConfigModalClosedOptions) => {
          if (relationConfigModalCloseOptions) {
            // Removed
            if (relationConfigModalCloseOptions.remove && relationLineExisted) {
              this.tableRelationService.deleteEntity(relationLineExisted.tableRelation.id)
                .subscribe((response: TableRelationModel): void => {
                  if (response) {
                    this.relationLines
                      .forEach((relationLine: RelationLine, index: number): void => {
                        if (relationLine.tableRelation.id === relationLineExisted.tableRelation.id) {
                          relationLine.leaderLine.remove();
                          this.relationLines.splice(index, index + 1);
                        }
                      });
                    this.toastrProvider.showSuccess({
                      detail: `Success delete mapping from <b>${response.source.name}</b> to <b>${response.target.name}</b>`
                    });
                  }
                });
            } else {
              // Updated
              this.tableRelationService.upsertEntity(relationConfigModalCloseOptions.tableRelation)
                .subscribe((response: TableRelationModel): void => {
                  if (relationLineExisted) {
                    this.relationLines
                      .forEach((relationLine: RelationLine, index: number): void => {
                        if (relationLine.tableRelation.id === relationLineExisted.tableRelation.id) {
                          DrawUtil.removedLeaderLines.push(relationLine.leaderLine._id);
                          relationLine.leaderLine.remove();
                          this.relationLines.splice(index, index + 1);
                          return;
                        }
                      });
                  }
                  this.relationLines.push(DrawUtil.newRelationLine(response));
                  this.relationLines[this.relationLines.length - 1].leaderLine.position();
                  this.toastrProvider.showSuccess({
                    detail: `Success config mapping from <b>${response.source.name}</b> to <b>${response.target.name}</b>`
                  });
                });
            }
          }
          this.current = undefined;
        });
    } else {
      this.current = field;
      this.toastrProvider.showInformation({
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
    return this.relationLines
      .map((relationLine: RelationLine): TableRelationModel => relationLine.tableRelation)
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

  get relations(): string[] {
    return this.relationLines
      .map((relationLine: RelationLine): TableRelationModel => relationLine.tableRelation)
      .map((tableRelation: TableRelationModel): string[] => [tableRelation.source.id, tableRelation.target.id])
      .reduce((previous, current) => [...previous, ...current], []);
  }

  ngOnDestroy(): void {
    this.relationLines.forEach((leaderLine: any) => {
      DrawUtil.removedLeaderLines.push(leaderLine._id);
      leaderLine.remove();
    });
  }

  reDrawRelationLine(table: TableModel): void {
    const tableRelations: TableRelationModel[] = [];
    this.relationLines.forEach((relationLine: RelationLine): void => {
      const containRelation: boolean = table.fields
        .map((field: FieldModel): string => field.id)
        .some((id: string): boolean => relationLine.tableRelation.source.id === id || relationLine.tableRelation.target.id === id);
      if (containRelation) {
        DrawUtil.removedLeaderLines.push(relationLine.leaderLine._id);
        relationLine.leaderLine.remove();
        tableRelations.push(relationLine.tableRelation);
      }
    });
    this.relationLines = this.relationLines.filter((relationLine: RelationLine): boolean => !tableRelations
      .map((tableRelation: TableRelationModel): string => tableRelation.id)
      .includes(relationLine.tableRelation.id));
    setTimeout(() => {
      // Synchronize functions
      tableRelations.forEach((tableRelation: TableRelationModel): void => {
        this.relationLines.push(DrawUtil.newRelationLine(tableRelation));
        this.relationLines[this.relationLines.length - 1].leaderLine.position();
      });
    });
  }

}
