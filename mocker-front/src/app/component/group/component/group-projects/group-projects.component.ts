import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input, OnChanges, SimpleChanges } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { ProjectService } from '@app/core/service/project.service';
import { GroupModel } from '@core/domain/model/entity/group.model';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-projects',
  templateUrl: 'group-projects.component.html',
  styleUrls: ['group-projects.component.scss']
})
export class GroupProjectsComponent extends AbstractComponent implements OnChanges {
  @Input() group: GroupModel;
  grid: Grid;

  constructor(
    injector: Injector,
    private projectService: ProjectService
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
          label: this.translateService.instant('component.group_projects.name'),
          key: 'name',
          isSearched: true
        },
        {
          label: this.translateService.instant('component.group_projects.description'),
          key: 'description'
        },
        {
          label: this.translateService.instant('component.group_projects.created_date'),
          key: 'createdDate'
        },
        {
          label: this.translateService.instant('component.group_projects.last_modified'),
          key: 'lastModified'
        },
        {
          label: this.translateService.instant('component.group_projects.delete'),
          key: 'delete'
        }
      ],
      values: !this.group ? [] : this.group.projects.map((project: ProjectModel): GridValue => ({
        name: {
          value: project.name,
          click: () => this.router.navigate([`/project/${project.id}`]),
          html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
        },
        description: this.truncatePipe.transform(project.description, 50),
        createdDate: this.datePipe.transform(project.createdDate) || StringUtil.EMPTY,
        lastModified: this.datePipe.transform(project.modifiedDate) || StringUtil.EMPTY,
        delete: {
          value: StringUtil.EMPTY,
          click: (): void => {
            this.modalProvider.showConfirmation({
              body: 'component.group_projects.delete_project_confirmation'
            }).subscribe((result: boolean): void => {
              if (result) {
                this.projectService.deleteEntity(project.id).subscribe((): void => {
                  this.projectService.getProjectsByGroupId(this.group.id).subscribe((projects: ProjectModel[]): void => {
                    this.group.projects = projects;
                  });
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
      click: () => this.router.navigate(['/project/new'], {
        queryParams: {
          groupId: this.group.id
        }
      }),
      content: 'component.group_projects.create_project'
    };
  }

}
