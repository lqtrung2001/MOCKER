import { AbstractModal } from '@core/class/abstract.modal';
import { Component, Injector, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { Table } from '@core/model/table';

/**
 * @author Do Quoc Viet
 * @license Ho Chi Minh City University of Technology and Education
 */

export interface TableConfigModalOptions {
  table: Table;
}

type Controls = {
  table: FormGroup<{
    fields: FormArray<FormGroup>
  }>;
  rows: FormControl;
  tableName: FormControl;
}

@Component({
  selector: 'moc-table-config-modal',
  templateUrl: 'table-config.modal.html',
  styleUrls: ['table-config.modal.scss']
})
export class TableConfigModal extends AbstractModal implements OnInit {
  override options: TableConfigModalOptions;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      table: this.formBuilder.group({
        fields: this.formBuilder.array<FormGroup<Controls>>([])
      }),
      rows: this.formBuilder.control(99, [Validators.required]),
      tableName: this.formBuilder.control(undefined, [])
    });
  }

  ngOnInit(): void {
    console.log(this.options)
    this.formGroup.controls.table.patchValue(this.options.table);
  }

}
