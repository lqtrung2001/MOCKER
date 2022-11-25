import { Component } from '@angular/core';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute } from '@angular/router';
import { Project } from '@core/model/project';

@Component({
  selector: 'app-project',
  templateUrl: './project.component.html',
  styleUrls: ['./project.component.scss']
})
export class ProjectComponent {

  project: Project = new Project();

  constructor(
    private activeRoute: ActivatedRoute,
    private projectService: ProjectService
  ) {
    const id: string = activeRoute.snapshot.params['id'];
    projectService.getProject(id)
      .subscribe((project: Project) => {
        this.project = project;
      });
  }


}
