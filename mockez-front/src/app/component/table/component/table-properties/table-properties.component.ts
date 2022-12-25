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

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-table-properties',
  templateUrl: './table-properties.component.html',
  styleUrls: ['./table-properties.component.scss']
})
export class TablePropertiesComponent {

  table: Table;
  formGroup: FormGroup;
  data: any[];
  tableOptions: TableOptionModalOptions;

  constructor(
    private activatedRoute: ActivatedRoute,
    private tableService: TableService,
    private router: Router,
    private formBuilder: FormBuilder,
    private modalService: ModalService,
    private modalProvider: ModalProvider,
    private generateService: GenerateService
  ) {
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
    if (this.formGroup.invalid) {
      return;
    }
    this.table.fields = this.formGroup.get('fields')?.value;
    this.tableService.saveOrUpdate(this.table)
      .subscribe((id) => {
        this.load(id);
      });
  }

  initData(callback: () => void): void {
    if (this.formGroup.invalid) {
      return;
    }
    if (!this.tableOptions) {
      this.modalProvider.showError({
        body: 'Please configure for table to generate by using options tab.'
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

  generate(): void {
    this.initData(() => {
      console.log('a');
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
        format: FormatEnum.JSON
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
}
