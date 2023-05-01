import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { ProjectService } from '@core/service/project.service';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-projects',
  templateUrl: 'group-projects.component.html',
  styleUrls: ['group-projects.component.scss']
})
export class GroupProjectsComponent extends AbstractComponent {
  @Input() projects: ProjectModel[];
  selects: string[] = [];

  constructor(
    injector: Injector,
    private projectService: ProjectService
  ) {
    super(injector);
  }

  isCheck(id: string): boolean {
    return !!this.selects.find((value: string) => value === id);
  }

  select(id: string): void {
    if (this.isCheck(id)) {
      this.selects = this.selects.filter((value: string) => value !== id);
    } else {
      this.selects.push(id);
    }
  }

  get isSelectAll(): boolean {
    return this.selects.length === this.projects.length;
  }

  selectAll(): void {
    if (this.isSelectAll) {
      this.selects = [];
    } else {
      this.selects = this.projects.map((project: ProjectModel) => project.id);
    }
  }

  delete(id: string): void {
    // delete project
  }

  get canDeleteSelected(): boolean {
    return !!this.selects.length;
  }

  deleteSelected(): void {
    if (!this.canDeleteSelected) {
      return;
    }
    // delete projects
  }
}
