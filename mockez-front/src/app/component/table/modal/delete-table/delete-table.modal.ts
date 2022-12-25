import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { Table } from '@core/model/table';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-delete-table-modal',
  templateUrl: 'delete-table.modal.html',
  styleUrls: ['delete-table.modal.scss']
})
export class DeleteTableModal extends Modal {

  name: string;
  formGroup: FormGroup;

  override onInjectInputs(table: Table) {
    this.name = table.name!;
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
