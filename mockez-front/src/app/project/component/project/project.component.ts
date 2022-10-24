import { Component, OnInit } from '@angular/core';
import { Project } from '@core/model/Project.modal';
import { ProjectService } from '@core/service/project.service';

@Component({
  selector: 'app-project',
  templateUrl: './project.component.html',
  styleUrls: ['./project.component.scss']
})
export class ProjectComponent implements OnInit {

  groupId: string = '';
  projects: Project[] = [];

  constructor(
    private projectService: ProjectService
  ) {
    projectService.getProjectByGroupId(this.groupId).subscribe((projects: Project[]) => {
      projects.forEach((project: Project) => {
        this.projects.push(project);
      });
    });
  }

  public ngOnInit(): void {

  }


}
