import {AbstractComponent} from '@core/common/abstract.component';
import {Component, Injector, Input, OnChanges, SimpleChanges} from '@angular/core';
import {ProjectModel} from '@core/domain/model/entity/project.model';
import {CreateAction, Grid, GridValue} from '@shared/component/grid/grid.component';
import {SchemaModel} from '@core/domain/model/entity/schema.model';
import {StringUtil} from '@core/util/string.util';
import {SchemaService} from '@core/service/schema.service';
import {GroupMemberModel} from "@core/domain/model/entity/group-member.model";
import {RoleEnum} from "@core/domain/enum/role.enum";
import {GroupService} from "@core/service/group.service";
import {group} from "@angular/animations";
import {GroupModel} from "@core/domain/model/entity/group.model";

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
    private schemaService: SchemaService,
    private groupService: GroupService
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
                  this.schemaService.get
                  this.refresh();
                });
              }
            });
          },
          html: '<i class="tw-cursor-pointer tw-text-red tw-self-center fa-solid fa-circle-xmark"></i>'
        }
      }))
    };
  }

  get createAction(): CreateAction {
    // this.groupService.getEntity(this.project.group.id)
    //   .subscribe((group: GroupModel): void => {
    //     const groupMember: GroupMemberModel | undefined = group.groupMembers
    //       .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id);
    //
    //   })
    // if (!groupMember || (groupMember.role !== RoleEnum.GROUP_ADMIN && groupMember.role !== RoleEnum.GROUP_ASSOCIATE)) {
    //   return {
    //     click: () => this.modalProvider.showError({
    //       detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.'
    //     }),
    //     content: 'component.schemas.create'
    //   };
    // }
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
