import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ProjectService } from '@core/service/project.service';
import { Project } from '@core/model/project';

@Component({
  selector: 'app-save-schema-modal',
  templateUrl: './save-project-modal.html',
  styleUrls: ['./save-project-modal.scss']
})
export class SaveProjectModal extends Modal {

  project: Project;
  formGroup: FormGroup;

  onInjectInputs(project: Project): void {
    // modify
    if (project?.id) {
      this.project = project;
    }
    this.formGroup.patchValue(project);
  }

  constructor(
    private formBuilder: FormBuilder,
    private projectService: ProjectService
  ) {
    super();
    this.formGroup = formBuilder.group({
      name: formBuilder.control('', Validators.required),
      summary: formBuilder.control('', Validators.required),
      group: formBuilder.control({ id: '' }, Validators.required)
    });
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    if (this.project) {
      this.project.name = this.formGroup.get('name')?.value;
      this.project.summary = this.formGroup.get('summary')?.value;
    } else {
      this.project = this.formGroup.getRawValue();
    }
    this.project.version = this.project.version || 0;
    console.log(this.project);
    this.projectService.saveOrUpdate(this.project).subscribe((id: string) => {
      this.close(id);
    });
  }
}
