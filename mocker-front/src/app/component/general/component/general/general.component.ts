import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { Action } from '@shared/component/action/action.component';
import { GenerateService } from '@core/service/generate.service';
import { Table } from '@core/model/table';
import { Field } from '@core/model/field';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';

/**
 * @author Do Quoc Viet
 * @class GeneralComponent
 * @date 05/02/2023
 */

type Controls = {
  table: FormGroup<{
    fields: FormArray<FormGroup>
  }>
  rows: FormControl;
  format: FormControl;
  tableName: FormControl;
}

@Component({
  selector: 'moc-general',
  templateUrl: 'general.component.html',
  styleUrls: ['general.component.scss']
})
export class GeneralComponent extends AbstractComponent {
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private generateService: GenerateService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      table: this.formBuilder.group({
        fields: this.formBuilder.array<FormGroup<Controls>>([])
      }),
      rows: this.formBuilder.control(1, [Validators.required]),
      format: this.formBuilder.control('SQL', [Validators.required]),
      tableName: this.formBuilder.control('Mocker', [])
    });
    // TODO check JSON.parse method
    const tableConfigStorage = JSON.parse(localStorage.getItem(LocalStorageConstant.TABLE_CONFIG) || 'false');
    if (tableConfigStorage) {
      this.formGroup.patchValue(tableConfigStorage);
      const { table } = tableConfigStorage;
      table.fields.forEach((field: Field) => {
        this.formGroup.controls.table.controls.fields.push(this.formBuilder.group({
          name: this.formBuilder.control(field.name, [Validators.required]),
          generateType: this.formBuilder.control(field.generateType, [Validators.required]),
          sqlType: this.formBuilder.control(field.sqlType, []),
          option: this.formBuilder.group({
            blank: this.formBuilder.control(field.option?.blank, [])
          }, [])
        }));
      });
    }
  }

  download(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    localStorage.setItem(LocalStorageConstant.TABLE_CONFIG, JSON.stringify(this.formGroup.getRawValue()));
    const table: Table = this.formGroup.controls.table.getRawValue() as Table;
    this.generateService.generateWithTable(table, this.formGroup.controls.rows.value).subscribe((data: any[]): void => {
      console.log(data);
    });
  }

  get supportedFormat(): Action[] {
    return [{
      id: '1',
      icon: 'fa-regular fa-database',
      label: 'SQL',
      click: () => {
        this.formGroup.controls.format.setValue('SQL');
        this.formGroup.controls.tableName.setValidators([Validators.required]);
      }
    }, {
      id: '2',
      icon: 'fa-sharp fa-regular fa-paperclip-vertical',
      label: 'JSON',
      click: () => {
        this.formGroup.controls.format.setValue('JSON');
        this.formGroup.controls.tableName.setValidators([Validators.required]);
      }
    }, {
      id: '3',
      icon: 'fa-regular fa-file-excel',
      label: 'XML',
      click: () => {
        this.formGroup.controls.format.setValue('XML');
        this.formGroup.controls.tableName.setValidators([Validators.required]);
      }
    }, {
      id: '4',
      icon: 'fa-regular fa-file-csv',
      label: 'CSV',
      click: () => {
        this.formGroup.controls.format.setValue('CSV');
        this.formGroup.controls.tableName.setValidators([]);
      }
    }];
  }

  get isShowTableNameField(): boolean {
    return this.formGroup.controls.format.value !== 'CSV';
  }
}
