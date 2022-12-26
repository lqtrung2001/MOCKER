import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Group } from '@core/model/group';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-delete-project',
  templateUrl: 'delete-group.modal.html',
  styleUrls: ['delete-group.modal.scss']
})
export class DeleteGroupModal extends Modal {

  name: string;
  formGroup: FormGroup;

  override onInjectInputs(group: Group) {
    this.name = group.name!;
  }

  constructor(
    private formBuilder: FormBuilder
  ) {
    super();
    this.formGroup = formBuilder.group({
      name: formBuilder.control('')
    });
  }
}
