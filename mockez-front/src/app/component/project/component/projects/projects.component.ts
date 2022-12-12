import { Component } from '@angular/core';
import { Project } from '@core/model/project';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { CreateProjectModal } from '@shared/modal/create-project/create-project.modal';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { Group } from '@core/model/group';

@Component({
  selector: 'app-projects',
  templateUrl: './projects.component.html',
  styleUrls: ['./projects.component.scss']
})
export class ProjectsComponent {

  storage: Project[] = [];
  projects: Project[] = [];
  credential: FormGroup;

  constructor(
    private projectService: ProjectService,
    private activatedRoute: ActivatedRoute,
    private modalService: ModalService,
    private formBuilder: FormBuilder,
    private modalProvider: ModalProvider
  ) {
    this.credential = formBuilder.group({
      filter: formBuilder.control('')
    });
    projectService.getProjects().subscribe((projects: Project[]) => {
      this.storage = projects;
      this.projects = projects;
    });
    this.credential.valueChanges.subscribe((value) => {
      const filter = value.filter?.toUpperCase();
      this.projects = this.storage.filter((project: Project) => project.name?.toUpperCase().includes(filter));
    });
    // this.createProject();
  }

  public createProject(): void {
    this.modalProvider.performAction('CREATE PROJECT')
      .subscribe((group: Group) => {
        if (!group) {
          return;
        }
        this.modalService.open(CreateProjectModal, group).onResult()
          .subscribe(() => {

          });
      });
  }

  public setBackgroundColor(index: number): any {
    const number = Math.round(index / 2);
    let backgroundColor;
    switch (number) {
      case 0: {
        backgroundColor = '#FF605C';
        break;
      }
      case 1: {
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
