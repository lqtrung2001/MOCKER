import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { GenerateService } from '@core/service/generate.service';
import { TableModel } from '@core/domain/model/entity/table.model';
import { FieldModel } from '@core/domain/model/entity/field.model';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { PreviewModal, PreviewModalOptions } from '@shared/modal/preview/preview.modal';
import { Option } from '@shared/component/dropdown/dropdown.component';
import { DownloadUtil } from '@core/util/download.util';
import { FormatEnum } from '@core/domain/enum/format.enum';
import { ChooseParentModal, ChooseParentModalOptions } from '@shared/modal/choose-parent/choose-parent.modal';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { TableService } from '@core/service/table.service';
import { SchemaService } from '@core/service/schema.service';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  table: FormGroup<{
    name: FormControl;
    fields: FormArray<FormGroup>;
    row: FormControl;
  }>;
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
    private tableService: TableService,
    private schemaService: SchemaService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      table: this.formBuilder.group({
        name: this.formBuilder.control('MOCKER', [Validators.required]),
        fields: this.formBuilder.array<FormGroup<Controls>>([]),
        row: this.formBuilder.control(1, [Validators.required])
      }),
      format: this.formBuilder.control(FormatEnum.SQL, [Validators.required])
    });
    this.formGroup.valueChanges.subscribe(() => {
      this.data = [];
    });
    const tableConfigStorage = JSON.parse(localStorage.getItem(LocalStorageConstant.TABLE_CONFIG) || 'false');
    if (tableConfigStorage) {
      this.formGroup.patchValue(tableConfigStorage);
      const { table } = tableConfigStorage;
      table.fields.forEach((field: FieldModel): void => {
        this.formGroup.controls.table.controls.fields.push(this.formBuilder.group({
          name: this.formBuilder.control(field.name, [Validators.required]),
          generateType: this.formBuilder.control(field.generateType, [Validators.required]),
          sqlType: this.formBuilder.control(field.sqlType, []),
          option: this.formBuilder.group({
            blank: this.formBuilder.control(field.option?.blank || 0, []),
            unique: this.formBuilder.control(field.option?.unique || false, [])
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
    if (!this.formGroup.controls.table.controls.fields.length) {
      this.modalProvider.showWarning({
        body: 'warning.fields_empty_when_generating'
      });
      return;
    }
    localStorage.setItem(LocalStorageConstant.TABLE_CONFIG, JSON.stringify(this.formGroup.getRawValue()));
    const table: TableModel = this.formGroup.controls.table.getRawValue() as TableModel;
    if (!this.data.length) {
      this.generateService.generateWithTable(table)
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
    DownloadUtil.download(this.data, this.formGroup.controls.format.value, tableName, tableName);
  }

  preview(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    if (!this.formGroup.controls.table.controls.fields.length) {
      this.modalProvider.showWarning({
        body: 'warning.fields_empty_when_generating'
      });
      return;
    }
    localStorage.setItem(LocalStorageConstant.TABLE_CONFIG, JSON.stringify(this.formGroup.getRawValue()));
    const table: TableModel = this.formGroup.controls.table.getRawValue() as TableModel;
    const format = this.formGroup.controls.format.value;
    if (!this.data.length) {
      this.generateService.generateWithTable(table)
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

  get formats(): Option[] {
    return this.applicationConfig.formats.map((format): Option => ({
      id: format.format,
      icon: format.icon,
      label: format.format,
      click: () => {
        this.formGroup.controls.format.setValue(format.format);
        this.formGroup.controls.table.controls.name.setValidators([Validators.required]);
      }
    }));
  }

  get isShowTableNameField(): boolean {
    return this.formGroup.controls.format.value !== FormatEnum.CSV;
  }

  saveToSchema(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    if (!this.formGroup.controls.table.controls.fields.length) {
      this.modalProvider.showWarning({
        body: 'warning.fields_empty_when_generating'
      });
      return;
    }
    localStorage.setItem(LocalStorageConstant.TABLE_CONFIG, JSON.stringify(this.formGroup.getRawValue()));
    const options: ChooseParentModalOptions = {
      type: 'schema'
    };
    this.modalService.open(ChooseParentModal, options)
      .subscribe((schemaId: string): void => {
        if (schemaId) {
          this.schemaService.getEntity(schemaId)
            .subscribe((schema: SchemaModel): void => {
              const table: TableModel = this.formGroup.controls.table.getRawValue() as TableModel;
              table.schema = schema;
              table.description = StringUtil.EMPTY;
              this.tableService.upsertEntity(table).subscribe((res: TableModel): void => {
                if (res.id) {
                  this.toastrProvider.showSuccess({
                    detail: `The table was successfully saved to the schema (id: ${schemaId}).`
                  });
                  this.router.navigate([`/schema/${schemaId}`]).then();
                }
              });
            });
        }
      });
  }

}
