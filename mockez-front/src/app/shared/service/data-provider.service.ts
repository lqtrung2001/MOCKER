import { Injectable } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FormatEnum } from '@core/config/format.enum';
import { GenerateReq, GenerateService } from '@core/service/generate.service';
import { Field } from '@core/model/field';
import { Observable } from 'rxjs';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';

@Injectable({
  providedIn: 'root'
})
export class DataProviderService {

  // Table
  public table: FormArray<FormGroup>;

  // Configuration
  public configuration: FormGroup;

  // Format supported
  public formatsSupported: FormatEnum[];

  // Data provider
  public data: any[] = [];

  constructor(
    private formBuilder: FormBuilder,
    private generateService: GenerateService
  ) {
    this.table = this.formBuilder.array<FormGroup>([]);
    this.table.valueChanges.subscribe(() => {
      this.data = [];
    });
    this.configuration = this.formBuilder.group({
      row: this.formBuilder.control(50, Validators.required),
      format: this.formBuilder.control(FormatEnum.SQL, Validators.required),
      tableName: this.formBuilder.control('mockez', Validators.required),
      isIncludeCreateTable: this.formBuilder.control(false, Validators.required)
    });
    this.configuration.valueChanges.subscribe(() => {
      this.data = [];
    });
    this.formatsSupported = [
      FormatEnum.SQL,
      FormatEnum.CSV,
      FormatEnum.JSON,
      FormatEnum.XML
    ];
  }

  public insertField(index?: number): void {
    this.data = [];
    this.table.insert(index || this.table.length, this.buildFieldDefault());
  }

  public removeField(index: number): void {
    this.data = [];
    this.table.removeAt(index);
  }

  public buildGenerateReq(): GenerateReq {
    const fields: Field[] = this.table.controls.map((formGroup: FormGroup) => {
      const field: Field = new Field();
      field.name = formGroup.get('name')?.value;
      field.sqlType = new SQLType();
      field.generateType = new GenerateType();
      return field;
    });
    return {
      row: this.configuration.get('row')?.value,
      fields
    };
  }

  public buildFieldDefault(): FormGroup {
    return this.formBuilder.group({
      name: this.formBuilder.control('', Validators.required),
      sqlType: this.formBuilder.control({
        id: '6ac96cfe-288b-4246-b882-b073e50acd16',
        code: 'VARCHAR'
      }, Validators.required),
      generateType: this.formBuilder.control({
        id: 'a07447c8-df4f-4dfa-9838-a46c34e888ca',
        code: 'Name',
        category: {
          id: '74fc1591-782d-4ee1-b011-85b00ab71a35'
        }
      }, Validators.required),
      option: this.formBuilder.control({
        blank: 0
      })
    });
  }

  public generateData() {
    // return this.generateService.generate(this.buildGenerateReq());
  }
}
