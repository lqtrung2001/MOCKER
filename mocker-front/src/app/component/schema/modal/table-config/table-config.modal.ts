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
  change?: boolean;
  table: TableModel;
  deleted?: boolean;
}

type Controls = {
  table: FormGroup<{
    name: FormControl,
    row: FormControl,
    fields: FormArray<FormGroup<FieldControls>>
  }>;
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
        fields: this.formBuilder.array<FormGroup<FieldControls>>([], []),
        row: this.formBuilder.control(99, [Validators.required, Validators.max(1000)])
      })
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
      const fieldGroup: FormGroup = this.formBuilder.group({
        id: this.formBuilder.control(undefined, []),
        name: this.formBuilder.control(undefined, [Validators.required]),
        generateType: this.formBuilder.control(undefined, [Validators.required]),
        sqlType: this.formBuilder.control(undefined, []),
        option: this.formBuilder.group({
          id: this.formBuilder.control(undefined, []),
          blank: this.formBuilder.control(0, []),
          unique: this.formBuilder.control(undefined, [])
        }, [])
      });
      fieldGroup.patchValue({
        id: field.id,
        name: field.name,
        generateType: field.generateType,
        sqlType: field.sqlType,
        option: {
          id: field.option?.id,
          blank: field.option?.blank || 0,
          unique: field.option?.unique
        }
      });
      this.formGroup.controls.table.controls.fields.push(fieldGroup);
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
    const { name, description, row, fields }: {
      name: string,
      description: string,
      row: number,
      fields: FieldModel[],
    } = this.formGroup.controls.table.getRawValue() as TableModel;
    const table: TableModel = {
      ...this.table,
      name,
      description,
      fields,
      row
    };
    table.fields = table.fields.map((field: FieldModel): FieldModel => {
      const found: FieldModel | undefined = this.table.fields.find((item: FieldModel): boolean => item.id === field.id);
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
      .subscribe((table: TableModel): void => {
        this.table = table;
        this.patchValues();
        this.change = true;
        const closeOptions: TableConfigModalCloseOptions = {
          change: true,
          table: this.table
        };
        super.close(closeOptions);
      });
  }

  delete(): void {
    if (!this.table?.id) {
      return;
    }
    this.modalProvider.showConfirmation({
      body: 'modal.table_config.delete_confirmation'
    }).subscribe((result: boolean): void => {
      if (result) {
        this.tableService.deleteEntity(this.table.id)
          .subscribe((table: TableModel): void => {
            if (table) {
              const closeOptions: TableConfigModalCloseOptions = {
                table,
                deleted: true
              };
              super.close(closeOptions);
            }
          });
      }
    });
  }

  override close(): void {
    if (this.formGroup.dirty || this.formGroup.controls.table.controls.fields.dirty) {
      this.modalProvider.showConfirmation({
        body: 'modal.table_config.close_without_save'
      }).subscribe((result: boolean): void => {
        if (result) {
          super.close();
        }
      });
    } else {
      super.close();
    }

  }

}
