import { Component } from '@angular/core';
import { Project } from '@core/model/project';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { Group } from '@core/model/group';
import { SaveProjectModal } from '@app/component/project/modal/save-project/save-project.modal';
import { ToastService } from '@shared/modal/toast-service';

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
    private modalProvider: ModalProvider,
    private router: Router,
    private toastService: ToastService
  ) {
    this.credential = formBuilder.group({
      filter: formBuilder.control('')
    });
    projectService.getProjects().subscribe((projects: Project[]) => {
      projects = projects.sort((p1: Project, p2: Project) => (new Date(p2.createdDate!)).getTime() - (new Date(p1.createdDate!)).getTime());
      this.storage = projects;
      this.projects = projects;
    });
    this.credential.valueChanges.subscribe((value) => {
      const filter = value.filter?.toUpperCase();
      this.projects = this.storage.filter((project: Project) => project.name?.toUpperCase().includes(filter));
    });
  }

  public setLineBackgroundColor(index: number): any {
    const number = Math.floor(Math.random() * (3));
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

  create(): void {
    this.modalProvider.performAction('CREATE PROJECT')
      .subscribe((group: Group) => {
        if (!group) {
          return;
        }
        this.modalService.open(SaveProjectModal, {
          group
        }).onResult()
          .subscribe((id: string) => {
            if (id) {
              this.router.navigate(['/project/' + id]).then(() => {
                console.log('Project created successfully');
              });
            }
          });
      });
  }
}
