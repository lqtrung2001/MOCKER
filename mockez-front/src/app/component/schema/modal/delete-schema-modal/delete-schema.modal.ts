import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Schema } from '@core/model/schema';

@Component({
  selector: 'app-delete-project',
  templateUrl: './delete-schema.modal.html',
  styleUrls: ['./delete-schema.modal.scss']
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
