import { Component } from '@angular/core';
import { Project } from '@core/model/project';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute } from '@angular/router';
import { ModalService } from '@app/shared/modal/modal-service/modal-service.service';
import { CreateProjectModal } from '@shared/modal/create-project/create-project.modal';

@Component({
  selector: 'app-projects',
  templateUrl: './projects.component.html',
  styleUrls: ['./projects.component.scss']
})
export class ProjectsComponent {

  projects: Project[] = [];

  constructor(
    private projectService: ProjectService,
    private route: ActivatedRoute,
    private modalService: ModalService
  ) {
    projectService.getProjects().subscribe((projects: Project[]) => {
      this.projects = projects;
    });
  }

  public createProject(): void {
    this.modalService.open(CreateProjectModal);
  }

  public randomColor(): any {
    let number = Math.floor(Math.random() * (4)) + 1;
    let backgroundColor;
    switch (number) {
      case 1: {
        backgroundColor = '#FF605C';
        break;
      }
      case 2: {
        backgroundColor = '#FFBD44';
        break;
      }
      default: {
        backgroundColor = '#00CA4E';
        break;
      }
    }
    return {
      backgroundColor
    };
  }
}
