import { Component } from '@angular/core';
import { ProjectService } from '@core/service/project.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Project } from '@core/model/project';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { FormBuilder, FormGroup } from '@angular/forms';
import { DeleteProjectModal } from '@app/component/project/modal/delete-project/delete-project.modal';
import { SaveProjectModal } from '@app/component/project/modal/save-project/save-project-modal';

@Component({
  selector: 'app-project',
  templateUrl: './project.component.html',
  styleUrls: ['./project.component.scss']
})
export class ProjectComponent {

  project: Project = new Project();
  isModifyingDescription: boolean = false;
  formGroup: FormGroup;

  constructor(
    private activatedRoute: ActivatedRoute,
    private projectService: ProjectService,
    private router: Router,
    private modalService: ModalService,
    private formBuilder: FormBuilder
  ) {
    this.formGroup = formBuilder.group({
      description: formBuilder.control('')
    });
    const id: string = activatedRoute.snapshot.params['id'];
    if (!id) {
      this.router.navigate(['/project']).then();
    }
    this.load(id);
  }

  load(id?: string) {
    this.projectService.getProject(id || this.project.id!)
      .subscribe((project: Project) => {
        this.project = project;
        this.formGroup.patchValue(this.project);
      });
  }


  openSchema() {
    this.router.navigate(['/schema'], { queryParams: { projectId: this.project.id } })
      .then(() => {

      });
  }

  modifyDetail(): void {
    this.modalService.open(SaveProjectModal, this.project)
      .onResult().subscribe(() => {
      this.load();
    });
  }

  delete(): void {
    this.modalService.open(DeleteProjectModal, {
      name: this.project.name
    }).onResult().subscribe((close: boolean) => {
      if (close) {
        this.projectService.deleteProject(this.project.id!).subscribe(() => {
          this.router.navigate(['/project']).then(() => {
            console.log('Project deleted');
          });
        });
      }
    });
  }

  modifyDescription(): void {
    this.isModifyingDescription = false;
    this.project.description = this.formGroup.get('description')?.value;
    this.projectService.saveOrUpdate(this.project).subscribe((id: string) => {
      this.load(id);
    });
  }
}
