import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { GroupService } from '@core/service/group.service';
import { Group } from '@core/model/group';

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
      name: formBuilder.control('', [Validators.required, Validators.maxLength(255)]),
      description: formBuilder.control('', [Validators.required, Validators.maxLength(4096)])
    });
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    const group: Group = this.formGroup.getRawValue();
    this.groupService.saveOrUpdate(group).subscribe((id: string) => {
      if (id) {
        this.close(id);
      }
    });
  }

}
