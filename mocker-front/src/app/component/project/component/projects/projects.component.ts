import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector, OnInit } from '@angular/core';
import { Project } from '@core/model/project';
import { ProjectService } from '@app/core/service/project.service';

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
  projects: Project[] = [];
  selects: string[] = [];

  constructor(
    injector: Injector,
    private projectService: ProjectService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.projectService.getProjects().subscribe((projects: Project[]): void => {
      this.projects = projects;
    });
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
      this.selects = this.projects.map((project: Project) => project.id);
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
