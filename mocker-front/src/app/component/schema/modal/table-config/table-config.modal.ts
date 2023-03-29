import { AbstractModal } from '@core/common/abstract.modal';
import { Component, Injector, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { TableModel } from '@core/domain/model/entity/table.model';
import { TableService } from '@core/service/table.service';
import { FieldModel } from '@core/domain/model/entity/field.model';
import { FieldControls } from '@shared/component/table-detail/table-detail.component';

/**
 * @author Do Quoc Viet
 */

export interface TableConfigModalOptions {
  table: TableModel;
  relations: string[];
}

export interface TableConfigModalCloseOptions {
  change: boolean;
  table: TableModel;
}

type Controls = {
  table: FormGroup<{
    name: FormControl,
    description: FormControl,
    fields: FormArray<FormGroup<FieldControls>>
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
  table: TableModel;
  change: boolean;

  constructor(
    injector: Injector,
    private tableService: TableService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      table: this.formBuilder.group({
        name: this.formBuilder.control(undefined, [Validators.required]),
        description: this.formBuilder.control(undefined, [Validators.required]),
        fields: this.formBuilder.array<FormGroup<FieldControls>>([])
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
    this.formGroup.controls.table.controls.fields = this.formBuilder.array<FormGroup>([]);
    this.table?.fields.forEach((field: FieldModel): void => {
      this.formGroup.controls.table.controls.fields.push(this.formBuilder.group({
        id: this.formBuilder.control(field.id, []),
        name: this.formBuilder.control(field.name, [Validators.required]),
        generateType: this.formBuilder.control(field.generateType, [Validators.required]),
        sqlType: this.formBuilder.control(field.sqlType, []),
        option: this.formBuilder.group({
          id: this.formBuilder.control(field.option?.id, []),
          blank: this.formBuilder.control(field.option?.blank || 0, [])
        }, [])
      }));
    });
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    this.formGroup.controls.table.controls.fields.markAllAsTouched();
    if (this.formGroup.invalid || this.formGroup.controls.table.controls.fields.invalid) {
      return;
    }
    if (!this.formGroup.controls.table.controls.fields.length) {
      this.modalProvider.showWarning({
        body: 'warning.table_is_empty'
      });
      return;
    }
    const { name, description, fields } = this.formGroup.controls.table.getRawValue() as TableModel;
    const table: TableModel = {
      ...this.table,
      name,
      description,
      fields
    };
    table.fields = table.fields.map((field: FieldModel): FieldModel => {
      const found = this.table.fields.find((item: FieldModel): boolean => item.id === field.id);
      if (found) {
        return {
          ...found,
          ...field,
          option: {
            ...found.option,
            ...field.option
          }
        };
      }
      return field;
    });
    this.tableService.upsertEntity(table)
      .subscribe((table: TableModel) => {
        this.table = table;
        this.patchValues();
        this.change = true;
      });
  }

  delete(): void {
    this.modalProvider.showConfirmation({
      body: 'modal.table_config.delete_confirmation'
    }).subscribe((result: boolean) => {
      if (result) {
        this.tableService.deleteEntity(this.table.id).subscribe((table: TableModel): void => {
          if (table) {
            this.close();
          }
        });
      }
    });
  }

  override close() {
    const closeOptions: TableConfigModalCloseOptions = {
      change: this.change,
      table: this.table
    };
    super.close(closeOptions);
  }

}
