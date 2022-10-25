import { Component, OnInit } from '@angular/core';
import { Project } from '@core/model/Project.modal';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-project',
  templateUrl: './project.component.html',
  styleUrls: ['./project.component.scss']
})
export class ProjectComponent implements OnInit {

  groupId: string = '';
  projects: Project[] = [];

  constructor(
    private projectService: ProjectService,
    private route: ActivatedRoute
  ) {
    projectService.getProjectByGroupId(this.groupId).subscribe((projects: Project[]) => {
      this.projects = projects;
    });
  }

  public ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      this.groupId = params['groupId'];
    });
  }
}
