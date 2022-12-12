import { Component } from '@angular/core';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute, Router } from '@angular/router';
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
    private projectService: ProjectService,
    private router: Router
  ) {
    const id: string = activeRoute.snapshot.params['id'];
    projectService.getProject(id)
      .subscribe((project: Project) => {
        this.project = project;
      });
  }


  openSchema(projectId: string | undefined) {
    if (!projectId) {
      console.error('Project ID is required');
      return;
    }
    this.router.navigate(['/schema'], { queryParams: { projectId } })
      .then(() => {

      });
  }
}
