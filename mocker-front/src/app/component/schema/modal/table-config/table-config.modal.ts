import { AbstractModal } from '@core/class/abstract.modal';
import { Component, Injector, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { Table } from '@core/model/table';
import { TableService } from '@core/service/table.service';
import { Field } from '@core/model/field';

/**
 * @author Do Quoc Viet
 * @license Ho Chi Minh City University of Technology and Education
 */

export interface TableConfigModalOptions {
  table: Table;
}

type Controls = {
  table: FormGroup<{
    name: FormControl,
    description: FormControl,
    fields: FormArray<FormGroup>
  }>;
  rows: FormControl;
}

@Component({
  selector: 'moc-table-config-modal',
  templateUrl: 'table-config.modal.html',
  styleUrls: ['table-config.modal.scss']
})
export class TableConfigModal extends AbstractModal implements OnInit {
  override options: TableConfigModalOptions;
  formGroup: FormGroup<Controls>;
  table: Table;

  constructor(
    injector: Injector,
    private tableService: TableService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      table: this.formBuilder.group({
        name: this.formBuilder.control(undefined, [Validators.required]),
        description: this.formBuilder.control(undefined, [Validators.required]),
        fields: this.formBuilder.array<FormGroup<Controls>>([])
      }),
      rows: this.formBuilder.control(99, [Validators.required])
    });
  }

  ngOnInit(): void {
    this.table = this.options.table;
    this.patchValues();
  }

  patchValues(): void {
    this.formGroup.controls.table.patchValue(this.table);
    this.formGroup.controls.table.controls.fields = this.formBuilder.array<FormGroup<Controls>>([]);
    this.table?.fields.forEach((field: Field): void => {
      this.formGroup.controls.table.controls.fields.push(this.formBuilder.group({
        name: this.formBuilder.control(field.name, [Validators.required]),
        generateType: this.formBuilder.control(field.generateType, [Validators.required]),
        sqlType: this.formBuilder.control(field.sqlType, []),
        option: this.formBuilder.group({
          blank: this.formBuilder.control(field.option?.blank || 0, [])
        }, [])
      }));
    });
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const { name, description, fields } = this.formGroup.controls.table.getRawValue() as Table;
    const table: Table = {
      ...this.table,
      name,
      description,
      fields
    };
    this.tableService.saveOrUpdate(table).subscribe((table: Table) => {
      this.table = table;
      this.patchValues();
    });
  }

  delete(): void {
    this.modalProvider.showConfirmation({
      body: 'Are you sure you want to delete this table?'
    }).subscribe((result: boolean) => {
      if (result) {
        this.tableService.delete1(this.table.id).subscribe((id: string): void => {
          if (id) {
            this.close();
          }
        });
      }
    });
  }

}