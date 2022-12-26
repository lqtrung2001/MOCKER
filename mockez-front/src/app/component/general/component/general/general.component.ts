import { Component } from '@angular/core';
import { Table } from '@core/model/table';
import { TableOptionModal, TableOptionModalOptions } from '@app/component/table/modal/table-option/table-option.modal';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { TableService } from '@core/service/table.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { GenerateService } from '@core/service/generate.service';
import { SelectTypeModal, SelectTypeModalOptions } from '@shared/modal/select-type/select-type.modal';
import { SQLType } from '@core/model/sql-type';
import { Field } from '@core/model/field';
import { GenerateType } from '@core/model/generate-type';
import { PreviewModal, PreviewModalOptions } from '@shared/modal/preview/preview.modal';
import { FormatEnum } from '@core/config/format.enum';
import { saveAs } from 'file-saver';
import { ConverterService } from '@core/util/converter.service';
import { SQLTypeService } from '@core/service/sql-type.service';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';

@Component({
  selector: 'app-general',
  templateUrl: 'general.component.html',
  styleUrls: ['general.component.scss']
})
export class GeneralComponent {

  table: Table;
  data: any[];
  tableOptions: TableOptionModalOptions;
  formGroup: FormGroup;

  constructor(
    private activatedRoute: ActivatedRoute,
    private tableService: TableService,
    private router: Router,
    private formBuilder: FormBuilder,
    private modalService: ModalService,
    private modalProvider: ModalProvider,
    private converterService: ConverterService,
    private generateService: GenerateService,
    private sqlTypeService: SQLTypeService,
    private generateTypeService: GenerateTypeService,
    private appConfigProviderService: AppConfigProviderService
  ) {
    sqlTypeService.getSQLTypes().subscribe((sqlTypes: SQLType[]) => {
      appConfigProviderService.sqlTypes = sqlTypes;
    });
    generateTypeService.getGenerateTypes().subscribe((generateTypes: GenerateType[]) => {
      appConfigProviderService.generateTypes = generateTypes;
    });
    this.formGroup = formBuilder.group({
      fields: formBuilder.control([])
    });
    this.table = new Table();
    this.table.name = 'MOCKEZ';
    this.table.description = 'MOCKEZ - MOCKEZ Documentation';
    this.formGroup.patchValue(this.table);
    this.insertField();
    this.insertField();
    this.insertField();
  }

  selectSQLType(index: number): void {
    const selectTypeModalOptions: SelectTypeModalOptions = {
      isSQLType: true,
      type: new SQLType()
    };
    this.modalService.open(SelectTypeModal, selectTypeModalOptions).onResult().subscribe((sqlType: SQLType) => {
      const fields = this.formGroup.get('fields')?.value;
      const field: Field = fields[index];
      field.sqlType = sqlType;
      fields[index] = field;
      this.formGroup.get('fields')?.setValue(fields);
    });
  }

  selectGenerateType(index: number): void {
    const selectTypeModalOptions: SelectTypeModalOptions = {
      isSQLType: false,
      type: new GenerateType()
    };
    this.modalService.open(SelectTypeModal, selectTypeModalOptions).onResult().subscribe((generateType: GenerateType) => {
      const fields = this.formGroup.get('fields')?.value;
      const field: Field = fields[index];
      field.generateType = generateType;
      fields[index] = field;
      this.formGroup.get('fields')?.setValue(fields);
    });
  }

  insertField(): void {
    const fields: Field[] = this.formGroup.get('fields')?.value;
    fields.push(this.buildFieldDefault());
    this.formGroup.get('fields')?.setValue(fields);
  }

  buildFieldDefault(): Field {
    return new Field();
  }

  removeField(index: number): void {
    const fields: Field[] = this.formGroup.get('fields')?.value;
    this.formGroup.get('fields')?.setValue(fields
      .filter((field: Field, i) => i !== index));
  }

  initData(callback: () => void): void {
    if (this.formGroup.invalid || this.formGroup.get('fields')?.value.some((field: Field) => !field.name || !field.generateType || field.name.includes(' '))) {
      this.modalProvider.showError({
        body: 'Table is invalid in this time, please double-check and make sure that * is required.'
      }).subscribe(() => {
        return;
      });
    } else {
      if (!this.tableOptions) {
        this.modalProvider.showError({
          body: 'Please configure for table to generate by using options tab.'
        });
      } else {
        this.table.fields = this.formGroup.get('fields')?.value;
        this.generateService.generateWithTable(this.table, this.tableOptions.row).subscribe((data: any[]) => {
          this.data = data;
          callback();
        });
      }
    }
  }

  generate(): void {
    const fileName: string = 'mockez';
    this.initData(() => {
      switch (this.tableOptions.type) {
        case FormatEnum.JSON:
          saveAs(new Blob(this.converterService.JSONArrayToJSON(this.data), {
            type: 'application/json'
          }), `${fileName}.json`);
          break;
        case FormatEnum.XML:
          saveAs(new Blob(this.converterService.JSONArrayToXML(this.data), {
            type: 'application/xml'
          }), `${fileName}.xml`);
          break;
        case FormatEnum.SQL:
          saveAs(new Blob(this.converterService.JSONArrayToSQL(this.tableOptions.name!, this.data)),
            `${fileName}.sql`);
          break;
        case FormatEnum.CSV:
          saveAs(new Blob(this.converterService.JSONArrayToCSV(this.data)),
            `${fileName}.csv`);
          break;
      }
    });
  }

  preview(): void {
    this.initData(() => {
      const options: PreviewModalOptions = {
        data: this.data,
        format: this.tableOptions.type,
        tableName: this.tableOptions.name
      };
      this.modalService.open(PreviewModal, options);
    });
  }

  option(): void {
    this.modalService.open(TableOptionModal, this.tableOptions)
      .onResult().subscribe((options: TableOptionModalOptions) => {
      this.tableOptions = options;
    });
  }
}
