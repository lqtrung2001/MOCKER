import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, OnInit } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { ProjectService } from '@app/core/service/project.service';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { ChooseParentModal, ChooseParentModalOptions } from '@shared/modal/choose-parent/choose-parent.modal';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

@Component({
  selector: 'moc-projects',
  templateUrl: 'projects.component.html',
  styleUrls: ['projects.component.scss']
})
export class ProjectsComponent extends AbstractComponent implements OnInit {
  grid: Grid;

  constructor(
    injector: Injector,
    private projectService: ProjectService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.projectService.getEntities().subscribe((projects: ProjectModel[]): void => {
      this.grid = {
        columns: [
          {
            label: this.translateService.instant('component.projects.name'),
            key: 'name',
            isSearched: true
          },
          {
            label: this.translateService.instant('component.projects.description'),
            key: 'description'
          },
          {
            label: this.translateService.instant('component.projects.shared_by'),
            key: 'sharedBy',
            isSearched: true
          },
          {
            label: this.translateService.instant('component.projects.last_modified'),
            key: 'lastModified'
          }
        ],
        values: projects.map((project: ProjectModel): GridValue => ({
          name: {
            value: project.name,
            click: () => this.router.navigate([`/project/${project.id}`]),
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
          },
          description: this.truncatePipe.transform(project.description, 50),
          sharedBy: {
            value: project.group.name,
            click: () => this.router.navigate([`/group/${project.group.id}`]),
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
          },
          lastModified: this.datePipe.transform(project.modifiedDate) || StringUtil.EMPTY
        }))
      };
    });
  }

  get createAction(): CreateAction {
    return {
      click: (): void => {
        const options: ChooseParentModalOptions = {
          type: 'group'
        };
        this.modalService.open(ChooseParentModal, options)
          .subscribe((groupId: string): void => {
            if (groupId) {
              this.router.navigate(['/project/new'], {
                queryParams: {
                  groupId
                }
              }).then((): void => {
              });
            }
          });
      },
      content: 'component.projects.create'
    };
  }

}
