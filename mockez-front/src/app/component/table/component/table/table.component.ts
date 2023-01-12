import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Table } from '@core/model/table';
import { TableService } from '@core/service/table.service';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ModalService } from '@app/shared/modal/modal-service/modal-service.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { Field } from '@core/model/field';
import { SelectTypeModal, SelectTypeModalOptions } from '@shared/modal/select-type/select-type.modal';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { GenerateService } from '@core/service/generate.service';
import { DeleteTableModal } from '@app/component/table/modal/delete-table/delete-table.modal';
import { PreviewModal, PreviewModalOptions } from '@shared/modal/preview/preview.modal';
import { FormatEnum } from '@core/config/format.enum';
import { TableOptionModal, TableOptionModalOptions } from '@app/component/table/modal/table-option/table-option.modal';
import { SaveTableModal, SaveTableModalOptions } from '@app/component/table/modal/save-table/save-table.modal';
import { saveAs } from 'file-saver';
import { ConverterService } from '@core/util/converter.service';
import { SQLTypeService } from '@core/service/sql-type.service';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { AppConfigService } from '@core/service/app-config.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-table',
  templateUrl: 'table.component.html',
  styleUrls: ['table.component.scss']
})
export class TableComponent {

  table: Table;
  formGroup: FormGroup;
  data: any[];
  tableOptions: TableOptionModalOptions;

  constructor(
    private activatedRoute: ActivatedRoute,
    private tableService: TableService,
    private router: Router,
    private converterService: ConverterService,
    private formBuilder: FormBuilder,
    private modalService: ModalService,
    private modalProvider: ModalProvider,
    private generateService: GenerateService,
    private sqlTypeService: SQLTypeService,
    private generateTypeService: GenerateTypeService,
    private appConfigProviderService: AppConfigService
  ) {
    sqlTypeService.getSQLTypes().subscribe((sqlTypes: SQLType[]) => {
      appConfigProviderService.sqlTypes = sqlTypes;
    });
    generateTypeService.getGenerateTypes().subscribe((generateTypes: GenerateType[]) => {
      appConfigProviderService.generateTypes = generateTypes;
    });
    this.formGroup = formBuilder.group({
      id: formBuilder.control(''),
      name: formBuilder.control(''),
      description: formBuilder.control(''),
      fields: formBuilder.control([])
    });
    const id: string = activatedRoute.snapshot.params['id'];
    if (!id) {
      this.router.navigate(['/project']).then(() => {
        modalProvider.showError({
          body: 'Table not found, please choose a table'
        });
      });
    } else {
      this.load(id);
    }
  }

  load(id: string): void {
    this.tableService.getTable(id).subscribe((table: Table) => {
      table.fields = table.fields.sort((t1: Field, t2: Field) => (new Date(t1.createdDate!)).getTime() - (new Date(t2.createdDate!)).getTime());
      this.table = table;
      this.formGroup.patchValue(table);
    });
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

  save(): void {
    if (this.formGroup.invalid
      || this.formGroup.get('fields')?.value.some((field: Field) =>
        !field.name
        || !field.generateType
        || !field.sqlType
        || field.name.includes(' '))) {
      this.modalProvider.showError({
        body: 'Table is invalid in this time, please double-check and make sure that * is required.'
      }).subscribe(() => {
        return;
      });
    } else {
      if (this.isDuplicated(this.formGroup.get('fields')?.value)) {
        this.modalProvider.showError({
          body: 'Duplicate fields.'
        }).subscribe(() => {
          return;
        });
      } else {
        this.table.fields = this.formGroup.get('fields')?.value;
        this.tableService.saveOrUpdate(this.table)
          .subscribe((id) => {
            this.load(id);
          });
      }
    }
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
        if (this.isDuplicated(this.formGroup.get('fields')?.value)) {
          this.modalProvider.showError({
            body: 'Duplicate fields.'
          }).subscribe(() => {
            return;
          });
        } else {
          this.table.fields = this.formGroup.get('fields')?.value;
          this.tableService.saveOrUpdate(this.table)
            .subscribe((id) => {
              this.load(id);
              this.generateService.generate(this.table.id!, this.tableOptions.row).subscribe((data: any[]) => {
                this.data = data;
                callback();
              });
            });
        }
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

  delete(): void {
    this.modalService.open(DeleteTableModal, {
      name: this.table.name
    }).onResult().subscribe((close: boolean) => {
      if (close) {
        this.tableService.delete(this.table.id!).subscribe((id) => {
          if (id) {
            this.router.navigate(['table'], { queryParams: { schemaId: this.table.schema?.id } }).then();
          }
        });
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
      if (options) {
        this.tableOptions = options;
      }
    });
  }

  modifyDetail(): void {
    const options: SaveTableModalOptions = {
      name: this.table.name!,
      description: this.table.description
    };
    this.modalService.open(SaveTableModal, options).onResult().subscribe((close: SaveTableModalOptions) => {
      if (close) {
        this.table.name = close.name;
        this.table.description = close.description;
        this.save();
      }
    });
  }

  isDuplicated(fields: Field[]): boolean {
    return new Set(fields.map(f => f.name)).size !== fields.length;
  }
}
