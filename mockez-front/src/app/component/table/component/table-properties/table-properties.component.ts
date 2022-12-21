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


  constructor(
    private activatedRoute: ActivatedRoute,
    private tableService: TableService,
    private router: Router,
    private formBuilder: FormBuilder,
    private modalService: ModalService,
    private modalProvider: ModalProvider
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
      tableService.getTable(id).subscribe((table: Table) => {
        this.table = table;
        this.formGroup.patchValue(table);
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
        this.insertField();
      });
    }
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
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    console.log(this.formGroup.getRawValue());
  }
}
