import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ProjectService } from '@core/service/project.service';

@Component({
  selector: 'app-create-projects',
  templateUrl: './create-project.modal.html',
  styleUrls: ['./create-project.modal.scss']
})
export class CreateProjectModal extends Modal {

  project: FormGroup;

  onInjectInputs(input: any): void {
    this.project.get('group')?.setValue({id: input})
  }

  constructor(
    private formBuilder: FormBuilder,
    private projectService: ProjectService
  ) {
    super();
    this.project = formBuilder.group({
      name: formBuilder.control('', Validators.required),
      summary: formBuilder.control('', Validators.required),
      group: formBuilder.control({ id: '' }, Validators.required)
    });
  }

  create(): void {
    if (this.project.invalid) {
      return;
    }
    this.projectService.createProject(this.project.getRawValue())
      .subscribe((id: string) => {
        this.close(id);
    })
  }
}
