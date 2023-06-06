import {
  Component,
  ElementRef,
  Injector,
  Input,
  OnChanges,
  OnDestroy,
  Renderer2,
  SimpleChanges,
  ViewChild
} from '@angular/core';
import { FieldModel } from '@core/domain/model/entity/field.model';
import { TableRelationModel } from '@core/domain/model/entity/table-relation.model';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import {
  RelationConfigModal,
  RelationConfigModalClosedOptions,
  RelationConfigModalOptions
} from '@app/component/schema/modal/relation-config/relation-config.modal';
import { TableRelationService } from '@core/service/table-relation.service';
import { SchemaService } from '@app/core/service/schema.service';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { TableModel } from '@core/domain/model/entity/table.model';
import { DrawUtil, RelationLine } from '@core/util/draw.util';
import { RelationTypeEnum } from '@core/domain/enum/relation-type.enum';
import { StringUtil } from '@core/util/string.util';
import {
  TableConfigModal,
  TableConfigModalCloseOptions,
  TableConfigModalOptions
} from '@app/component/schema/modal/table-config/table-config.modal';
import { DataModel } from '@core/domain/model/data.model';
import { GenerateService } from '@core/service/generate.service';
import { DownloadUtil } from '@core/util/download.util';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Option } from '@shared/component/dropdown/dropdown.component';
import { FormatEnum } from '@core/domain/enum/format.enum';
import { CdkDragEnd, CdkDragMove } from '@angular/cdk/drag-drop';
import { Position } from '@shared/component/table/table.component';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  format: FormControl;
  filename: FormControl;
}

@Component({
  selector: 'moc-diagram',
  templateUrl: 'diagram.component.html',
  styleUrls: ['diagram.component.scss']
})
export class DiagramComponent extends AbstractSharedComponent implements OnChanges, OnDestroy {
  @Input() schema: SchemaModel;
  @ViewChild('diagram') diagram: ElementRef;
  data: DataModel | undefined;
  current: FieldModel | undefined;
  relationLines: RelationLine[] = [];
  formGroup: FormGroup<Controls>;
  position: Position | undefined;
  tableIdIsBeingMoved: string | undefined;

  constructor(
    injector: Injector,
    private renderer: Renderer2,
    private tableRelationService: TableRelationService,
    private schemaService: SchemaService,
    private generateService: GenerateService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      format: this.formBuilder.control(FormatEnum.SQL, [Validators.required]),
      filename: this.formBuilder.control('MOCKER', [Validators.required])
    });
  }

  ngOnChanges(changes: SimpleChanges): void {
    if (this.schema?.id) {
      this.relationLines.forEach((relationLine: RelationLine): void => {
        relationLine.leaderLine.remove();
      });
      this.schemaService.getTablesBySchema(this.schema.id)
        .subscribe((tables: TableModel[]): void => {
          this.schema.tables = tables;
          // Remove the relation lines
          this.relationLines = [];
          this.schemaService.getTableRelationsBySchema(this.schema.id)
            .subscribe((tableRelations: TableRelationModel[]): void => {
              tableRelations.forEach((tableRelation: TableRelationModel): void => {
                const relationLine: RelationLine = DrawUtil.newRelationLine(tableRelation);
                if (relationLine) {
                  this.relationLines.push(relationLine);
                }
              });
              this.relationLines.forEach((relationLine: RelationLine) => relationLine.leaderLine.position());
            });
        });
    }
  }

  dragMoved(table: TableModel, event: CdkDragMove): void {
    this.tableIdIsBeingMoved = table.id;
    this.position = {
      ...event.pointerPosition
    };
    this.renderer.addClass(event.source.element.nativeElement, '!tw-z-20');
    '!tw-border !tw-border-blue-500'
      .split(StringUtil.SPACE).forEach((clazz: string): void => {
      this.renderer.addClass(event.source.element.nativeElement.querySelector('#main'), clazz);
    });
    this.modifyBoundingClientRectWhenTableMove(event);
    this.relationLines.forEach((relationLine: RelationLine): void => {
      const containRelation: boolean = table.fields
        .map((field: FieldModel): string => field.id)
        .some((id: string): boolean => id === relationLine.tableRelation.source.id || id === relationLine.tableRelation.target.id);
      if (containRelation) {
        const socket: string = DrawUtil.getSocketPosition(relationLine.tableRelation.source.id, relationLine.tableRelation.target.id);
        relationLine.leaderLine.size = 1.75;
        relationLine.leaderLine.setOptions({ startSocket: socket, endSocket: socket, color: 'rgb(30,41,248)' });
        relationLine.leaderLine.position();
      }
    });
  }

  modifyBoundingClientRectWhenTableMove(event: CdkDragMove): void {
    // // When table move to left [Width]
    // if (this.diagram.nativeElement.getBoundingClientRect().x >= event.pointerPosition.x - 250) {
    //   this.renderer.setStyle(this.diagram.nativeElement, 'width', `${this.diagram.nativeElement.getBoundingClientRect().width + 1}px`);
    // }
    // // When table move to top [Height]
    // if (this.diagram.nativeElement.getBoundingClientRect().y >= event.pointerPosition.y - 200) {
    //   this.renderer.setStyle(this.diagram.nativeElement, 'height', `${this.diagram.nativeElement.getBoundingClientRect().height + 1}px`);
    // }
    // // When table move to right [WIDTH]
    // if ((this.diagram.nativeElement.getBoundingClientRect().x + this.diagram.nativeElement.getBoundingClientRect().width) <= event.pointerPosition.x + 250) {
    //   this.renderer.setStyle(this.diagram.nativeElement, 'width', `${this.diagram.nativeElement.getBoundingClientRect().width + 1}px`);
    // }
    // // When table move to bottom [HEIGHT]
    // if (this.diagram.nativeElement.getBoundingClientRect().y + this.diagram.nativeElement.getBoundingClientRect().height <= event.pointerPosition.y + 200) {
    //   this.renderer.setStyle(this.diagram.nativeElement, 'height', `${this.diagram.nativeElement.getBoundingClientRect().height + 1}px`);
    // }
  }

  dragEnded(table: TableModel, event: CdkDragEnd): void {
    this.relationLines.forEach((relationLine: RelationLine): void => {
      const containRelation: boolean = table.fields
        .map((field: FieldModel): string => field.id)
        .some((id: string): boolean => id === relationLine.tableRelation.source.id || id === relationLine.tableRelation.target.id);
      if (containRelation) {
        relationLine.leaderLine.size = 1.5;
        relationLine.leaderLine.setOptions({ color: '#333' });
      }
    });
    this.tableIdIsBeingMoved = undefined;
    this.position = undefined;
    this.renderer.setAttribute(event.source.element.nativeElement, 'class',
      event.source.element.nativeElement.classList.value.replace(/ !tw-z-20/g, StringUtil.EMPTY));
    this.renderer.setAttribute(event.source.element.nativeElement.querySelector('#main'), 'class',
      event.source.element.nativeElement.querySelector('#main')!.classList.value.replace(/ !tw-border !tw-border-blue-500/g, StringUtil.EMPTY));
  }

  onScroll(): void {
    this.relationLines.forEach((relationLine: RelationLine): void => {
      const socket: string = DrawUtil.getSocketPosition(relationLine.tableRelation.source.id, relationLine.tableRelation.target.id);
      relationLine.leaderLine.setOptions({ startSocket: socket, endSocket: socket });
      relationLine.leaderLine.position();
    });
  }

  relationMapping(field: FieldModel): void {
    if (this.current) {
      if (this.current.id === field.id) {
        this.current = undefined;
        return;
      }
      if (this.current.generateType.id !== field.generateType.id
        || (this.current.sqlType && field.sqlType && this.current.sqlType.id !== field.sqlType.id)) {
        this.modalProvider.showError({
          body: 'component.diagram.invalid_mapping'
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
      }).reduce((previous: string[], current: string[]) => [...previous, ...current], []);
  }

  get relations(): string[] {
    return this.relationLines
      .map((relationLine: RelationLine): TableRelationModel => relationLine.tableRelation)
      .map((tableRelation: TableRelationModel): string[] => [tableRelation.source.id, tableRelation.target.id])
      .reduce((previous: string[], current: string[]) => [...previous, ...current], []);
  }

  ngOnDestroy(): void {
    this.relationLines.forEach((relationLine: RelationLine): void => {
      DrawUtil.removedLeaderLines.push(relationLine.leaderLine._id);
      relationLine.leaderLine.remove();
    });
  }

  reDrawRelationLine(table: TableModel): void {
    // refresh data when the tables are updated
    this.data = undefined;
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
    try {
      tableRelations.forEach((tableRelation: TableRelationModel): void => {
        this.relationLines.push(DrawUtil.newRelationLine(tableRelation));
        this.relationLines[this.relationLines.length - 1].leaderLine.position();
      });
    } catch (e) {
      // TODO: Handle
    }
  }

  createTable(): void {
    const table: TableModel = new TableModel();
    table.schema = this.schema;
    const options: TableConfigModalOptions = {
      table,
      relations: []
    };
    this.modalService.open(TableConfigModal, options)
      .subscribe((closeOptions: TableConfigModalCloseOptions): void => {
        if (closeOptions && closeOptions.table && !closeOptions.deleted) {
          this.schema.tables.push(closeOptions.table);
        }
      });
  }

  download(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const callback: () => void = (): void => {
      DownloadUtil.download(this.data!, this.formGroup.controls.format.value, this.formGroup.controls.filename.value);
    };
    if (this.data) {
      callback();
    } else {
      this.initializeData(callback);
    }
  }

  preview(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const callback: () => void = (): void => {
      this.modalProvider.showInformation({
        body: 'component.diagram.generated'
      });
    };
    if (this.data) {
      callback();
    } else {
      this.initializeData(callback);
    }
  }

  initializeData(callback?: () => void): void {
    if (!this.schema.tables.length) {
      this.modalProvider.showError({
        detail: 'No tables found for this schema, please try again.'
      });
      return;
    }
    this.generateService.generateBySchema(this.schema.id)
      .subscribe((data: DataModel): void => {
        this.data = data;
        if (callback) {
          callback();
        }
      });
  }

  get formats(): Option[] {
    return this.applicationConfig.formats.map((format: {
      icon: string,
      format: FormatEnum
    }): Option => ({
      id: format.format,
      icon: format.icon,
      label: format.format,
      click: (): void => {
        this.formGroup.controls.format.setValue(format.format);
      }
    }));
  }

  tableDeleted(table: TableModel, deleted: boolean): void {
    if (deleted) {
      this.schema.tables = this.schema.tables.filter((item: TableModel): boolean => item.id !== table.id);
      // Delete relation line
      this.relationLines.forEach((relationLine: RelationLine): void => {
        const containRelation: boolean = table.fields
          .map((field: FieldModel): string => field.id)
          .some((id: string): boolean => id === relationLine.tableRelation.source.id || id === relationLine.tableRelation.target.id);
        if (containRelation) {
          relationLine.leaderLine.remove();
        }
      });
    }
  }

}
