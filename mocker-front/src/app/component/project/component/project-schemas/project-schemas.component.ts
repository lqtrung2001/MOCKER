import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input, OnChanges, SimpleChanges } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { StringUtil } from '@core/util/string.util';
import { SchemaService } from '@core/service/schema.service';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-project-schemas',
  templateUrl: 'project-schemas.component.html',
  styleUrls: ['project-schemas.component.scss']
})
export class ProjectSchemasComponent extends AbstractComponent implements OnChanges {
  @Input() project: ProjectModel;
  grid: Grid;

  constructor(
    injector: Injector,
    private schemaService: SchemaService
  ) {
    super(injector);
  }

  ngOnChanges(changes: SimpleChanges): void {
    this.refresh();
  }

  refresh(): void {
    this.grid = {
      columns: [
        {
          label: this.translateService.instant('component.project_schemas.name'),
          key: 'name',
          isSearched: true
        },
        {
          label: this.translateService.instant('component.project_schemas.description'),
          key: 'description'
        },
        {
          label: this.translateService.instant('component.project_schemas.created_date'),
          key: 'createdDate'
        },
        {
          label: this.translateService.instant('component.project_schemas.last_modified'),
          key: 'lastModified'
        },
        {
          label: this.translateService.instant('component.group_projects.delete'),
          key: 'delete'
        }
      ],
      values: !this.project ? [] : this.project.schemas.map((schema: SchemaModel): GridValue => ({
        name: {
          value: schema.name,
          click: () => this.router.navigate([`/schema/${schema.id}`]),
          html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
        },
        description: this.truncatePipe.transform(schema.description, 50),
        createdDate: this.datePipe.transform(schema.createdDate) || StringUtil.EMPTY,
        lastModified: this.datePipe.transform(schema.modifiedDate) || StringUtil.EMPTY,
        delete: {
          value: StringUtil.EMPTY,
          click: (): void => {
            this.modalProvider.showConfirmation({
              body: 'component.project_schemas.delete_schema_confirmation'
            }).subscribe((result: boolean): void => {
              if (result) {
                this.schemaService.deleteEntity(schema.id).subscribe((): void => {
                  const position: number = this.project.schemas
                    .indexOf(this.project.schemas
                      .find((item: SchemaModel): boolean => item.id === schema.id)!);
                  this.project.schemas.splice(position, 1);
                  this.refresh();
                });
              }
            });
          },
          html: '<i class="tw-cursor-pointer tw-text-red tw-self-center fa-regular fa-circle-xmark"></i>'
        }
      }))
    };
  }

  get createAction(): CreateAction {
    return {
      click: () => this.router.navigate(['/schema/new'], {
        queryParams: {
          projectId: this.project.id
        }
      }),
      content: 'component.schemas.create'
    };
  }

}
