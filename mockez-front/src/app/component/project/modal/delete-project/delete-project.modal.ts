import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Project } from '@core/model/project';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-delete-project-modal',
  templateUrl: 'delete-project.modal.html',
  styleUrls: ['delete-project.modal.scss']
})
export class DeleteProjectModal extends Modal {

  name: string;
  formGroup: FormGroup;

  override onInjectInputs(project: Project) {
    this.name = project.name!;
  }

  constructor(
    private formBuilder: FormBuilder
  ) {
    super();
    this.formGroup = formBuilder.group({
      projectName: formBuilder.control('')
    });
  }
}
