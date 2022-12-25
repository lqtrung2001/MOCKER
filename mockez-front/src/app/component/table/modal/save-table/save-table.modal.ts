import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

export interface SaveTableModalOptions {
  name: string;
  description?: string;
}

@Component({
  selector: 'app-save-table-modal',
  templateUrl: 'save-table.modal.html',
  styleUrls: ['save-table.modal.scss']
})
export class SaveTableModal extends Modal {

  options: SaveTableModalOptions;
  formGroup: FormGroup;

  override onInjectInputs(option: SaveTableModalOptions) {
    this.options = option;
    this.formGroup.patchValue(option);
  }

  constructor(
    private formBuilder: FormBuilder
  ) {
    super();
    this.formGroup = formBuilder.group({
      name: formBuilder.control('', [Validators.required]),
      description: formBuilder.control('')
    });
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    const { name, description } = this.formGroup.getRawValue();
    this.close({
      name,
      description
    });
  }
}
