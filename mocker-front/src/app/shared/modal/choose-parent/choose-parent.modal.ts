import { Component, Injector, OnInit } from '@angular/core';
import { AbstractModal } from '@core/common/abstract.modal';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { ProjectService } from '@core/service/project.service';
import { GroupService } from '@core/service/group.service';
import { FormControl } from '@angular/forms';

/**
 * @author Do Quoc Viet
 */

export interface ChooseParentModalOptions {
  type: 'project' | 'group';
}

@Component({
  selector: 'moc-choose-parent-modal',
  templateUrl: 'choose-parent.modal.html',
  styleUrls: ['choose-parent.modal.scss']
})
export class ChooseParentModal extends AbstractModal implements OnInit {
  override options: ChooseParentModalOptions;
  searchFormControl: FormControl;
  values: any[] = [];
  parents: any[] = [];

  constructor(
    injector: Injector,
    private projectService: ProjectService,
    private groupService: GroupService
  ) {
    super(injector);
    this.searchFormControl = this.formBuilder.control(undefined, []);
    this.searchFormControl.valueChanges.subscribe((value: string): void => {
      this.values = this.parents.filter((parent: ProjectModel | GroupModel): boolean => {
        return parent.name.toLowerCase().includes(value.toLowerCase());
      });
    });
  }

  ngOnInit(): void {
    if (this.options.type === 'project') {
      this.projectService.getEntities().subscribe((projects: ProjectModel[]): void => {
        this.parents = projects;
        this.values = projects;
      });
    }
    if (this.options.type === 'group') {
      this.groupService.getEntities().subscribe((groups: GroupModel[]): void => {
        this.parents = groups;
        this.values = groups;
      });
    }
  }

  selectParent(id: string): void {
    this.close(id);
  }

  viewMore(): void {
    this.close();
    this.router.navigate(['/project']).then((): void => {
    });
  }

  get title(): string {
    return this.translateService.instant('modal.choose_parent.title', { entity: this.options?.type });
  }

  get placeholder(): string {
    return this.translateService.instant('modal.choose_parent.search_placeholder', { entity: this.options?.type });
  }

}
