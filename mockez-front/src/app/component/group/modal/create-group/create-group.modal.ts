import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { GroupService } from '@core/service/group.service';

@Component({
  selector: 'app-create-group-modal',
  templateUrl: './create-group.modal.html',
  styleUrls: ['./create-group.modal.scss']
})
export class CreateGroupModal extends Modal {

  formGroup: FormGroup;

  override onInjectInputs(input: any) {
  }

  constructor(
    private formBuilder: FormBuilder,
    private groupService: GroupService
  ) {
    super();
    this.formGroup = formBuilder.group({
      name: formBuilder.control(''),
      description: formBuilder.control('')
    });
  }

  submit(): void {

  }

}
