import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';

@Component({
  selector: 'app-save-schema-modal',
  templateUrl: './save-schema-modal.html',
  styleUrls: ['./save-schema-modal.scss']
})
export class SaveSchemaModal extends Modal {

  schema: Schema;
  formGroup: FormGroup;

  onInjectInputs(schema: Schema): void {
    // modify
    if (schema?.id) {
      this.schema = schema;
    }
    this.formGroup.patchValue(schema);
  }

  constructor(
    private formBuilder: FormBuilder,
    private schemaService: SchemaService
  ) {
    super();
    this.formGroup = formBuilder.group({
      name: formBuilder.control('', Validators.required),
      description: formBuilder.control('', Validators.required),
      project: formBuilder.control({ id: '' }, Validators.required)
    });
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    if (this.schema) {
      this.schema.name = this.formGroup.get('name')?.value;
      this.schema.description = this.formGroup.get('description')?.value;
    } else {
      this.schema = this.formGroup.getRawValue();
    }
    this.schema.version = this.schema.version || 0;
    this.schemaService.saveOrUpdate(this.schema).subscribe((id: string) => {
      this.close(id);
    });
  }
}
