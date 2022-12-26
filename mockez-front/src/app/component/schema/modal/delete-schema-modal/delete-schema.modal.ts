import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Schema } from '@core/model/schema';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-delete-schema-modal',
  templateUrl: 'delete-schema.modal.html',
  styleUrls: ['delete-schema.modal.scss']
})
export class DeleteSchemaModal extends Modal {

  name: string;
  formGroup: FormGroup;

  override onInjectInputs(schema: Schema) {
    this.name = schema.name!;
  }

  constructor(
    private formBuilder: FormBuilder
  ) {
    super();
    this.formGroup = formBuilder.group({
      schemaName: formBuilder.control('')
    });
  }
}
