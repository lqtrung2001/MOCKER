import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { Action } from '@shared/component/action/action.component';
import { GenerateService } from '@core/service/generate.service';
import { Table } from '@core/model/table';
import { Field } from '@core/model/field';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { ConverterService } from '@app/core/service/utility/converter.service';
import * as FileSaver from 'file-saver';
import { PreviewModal, PreviewModalOptions } from '@shared/modal/preview/preview.modal';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  table: FormGroup<{
    name: FormControl;
    fields: FormArray<FormGroup>;
  }>;
  rows: FormControl;
  format: FormControl;
}

@Component({
  selector: 'moc-general',
  templateUrl: 'general.component.html',
  styleUrls: ['general.component.scss']
})
export class GeneralComponent extends AbstractComponent {
  formGroup: FormGroup<Controls>;
  data: any[];

  constructor(
    injector: Injector,
    private generateService: GenerateService,
    private converterService: ConverterService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      table: this.formBuilder.group({
        name: this.formBuilder.control(undefined, [Validators.required]),
        fields: this.formBuilder.array<FormGroup<Controls>>([])
      }),
      rows: this.formBuilder.control(1, [Validators.required]),
      format: this.formBuilder.control('SQL', [Validators.required])
    });
    this.formGroup.valueChanges.subscribe(() => {
      this.data = [];
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
            blank: this.formBuilder.control(field.option?.blank || 0, [])
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
    if (!this.data.length) {
      this.generateService.generateWithTable(table, this.formGroup.controls.rows.value)
        .subscribe((data: any[]): void => {
          this.data = data;
          this.startDownload();
        });
    } else {
      this.startDownload();
    }
  }

  startDownload(): void {
    const tableName: string = this.formGroup.controls.table.controls.name.value;
    const format: string = this.formGroup.controls.format.value;
    let data: any[] = this.data;
    switch (format) {
      case 'SQL':
        data = this.converterService.toSQL(data, tableName);
        break;
      case 'JSON':
        data = this.converterService.toJSON(data, tableName);
        break;
      case 'XML':
        data = this.converterService.toXML(data, tableName);
        break;
      case 'CSV':
        data = this.converterService.toCSV(data);
        break;
    }
    FileSaver.saveAs(new File(data, `${tableName || 'Mocker'}.${format.toLowerCase()}`, { type: 'text/plain;charset=utf-8' }));
  }

  preview(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    localStorage.setItem(LocalStorageConstant.TABLE_CONFIG, JSON.stringify(this.formGroup.getRawValue()));
    const table: Table = this.formGroup.controls.table.getRawValue() as Table;
    const format = this.formGroup.controls.format.value;
    if (!this.data.length) {
      this.generateService.generateWithTable(table, this.formGroup.controls.rows.value)
        .subscribe((data: any[]): void => {
          this.data = data;
          const options: PreviewModalOptions = {
            data,
            tableName: this.formGroup.controls.table.controls.name.value,
            format,
            download: this.download.bind(this)
          };
          this.modalService.open(PreviewModal, options);
        });
    } else {
      const options: PreviewModalOptions = {
        data: this.data,
        tableName: this.formGroup.controls.table.controls.name.value,
        format,
        download: this.download.bind(this)
      };
      this.modalService.open(PreviewModal, options);
    }
  }

  get supportedFormat(): Action[] {
    return [{
      id: '1',
      icon: 'fa-regular fa-database',
      label: 'SQL',
      click: () => {
        this.formGroup.controls.format.setValue('SQL');
        this.formGroup.controls.table.controls.name.setValidators([Validators.required]);
      }
    }, {
      id: '2',
      icon: 'fa-sharp fa-regular fa-paperclip-vertical',
      label: 'JSON',
      click: () => {
        this.formGroup.controls.format.setValue('JSON');
        this.formGroup.controls.table.controls.name.setValidators([Validators.required]);
      }
    }, {
      id: '3',
      icon: 'fa-regular fa-file-excel',
      label: 'XML',
      click: () => {
        this.formGroup.controls.format.setValue('XML');
        this.formGroup.controls.table.controls.name.setValidators([Validators.required]);
      }
    }, {
      id: '4',
      icon: 'fa-regular fa-file-csv',
      label: 'CSV',
      click: () => {
        this.formGroup.controls.format.setValue('CSV');
        this.formGroup.controls.table.controls.name.setValidators([]);
      }
    }];
  }

  get isShowTableNameField(): boolean {
    return this.formGroup.controls.format.value !== 'CSV';
  }
}
