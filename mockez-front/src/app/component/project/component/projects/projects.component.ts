import { Component } from '@angular/core';
import { Project } from '@core/model/project';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
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
  filter: FormControl;

  constructor(
    private projectService: ProjectService,
    private activatedRoute: ActivatedRoute,
    private modalService: ModalService,
    private formBuilder: FormBuilder,
    private modalProvider: ModalProvider,
    private router: Router,
    private toastService: ToastService
  ) {
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value: string) => {
      this.projects = this.storage.filter((project: Project) =>
        project.name?.toUpperCase().includes(value.toUpperCase())
        || project.summary?.toUpperCase().includes(value.toUpperCase())
        || project.description?.toUpperCase().includes(value.toUpperCase()));
    });
    projectService.getProjects().subscribe((projects: Project[]) => {
      projects = projects.sort((p1: Project, p2: Project) => (new Date(p2.createdDate!)).getTime() - (new Date(p1.createdDate!)).getTime());
      this.storage = projects;
      this.projects = projects;
    });
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
