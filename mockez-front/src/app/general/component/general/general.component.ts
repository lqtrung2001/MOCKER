import { Component, OnInit } from '@angular/core';
import { GenerateReq, GenerateService } from '@core/service/generate.service';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { saveAs } from 'file-saver';
import { ConverterService } from '@core/util/converter.service';
import { FormatEnum } from '@core/config/format.enum';
import { SQLType } from '@core/model/SQLType.modal';
import { GenerateType } from '@core/model/GenerateType.modal';
import { Field } from '@core/model/Field.modal';
import { ModalService } from '@shared/service/modal.service';

export interface SelectTypeOption {
  isSQLType: boolean;
  type: SQLType | GenerateType;
  rowNumber: number;
}

@Component({
  selector: 'app-general',
  templateUrl: './general.component.html',
  styleUrls: ['./general.component.scss']
})
export class GeneralComponent implements OnInit {

  public isDisplaySelectType: boolean;
  public isDisplayPreview: boolean;
  public isSelectFormat: boolean;
  public data: any[];
  public table: FormArray<FormGroup>;
  public configuration: FormGroup;
  public formatsSupported: FormatEnum[];
  public selectTypeOption!: SelectTypeOption;

  constructor(
    private formBuilder: FormBuilder,
    private generateService: GenerateService,
    private converterService: ConverterService,
    private modalService: ModalService
  ) {
    this.isDisplaySelectType = false;
    this.isDisplayPreview = false;
    this.isSelectFormat = false;
    this.data = [];
    this.table = this.formBuilder.array<FormGroup>([]);
    this.configuration = this.formBuilder.group({
      row: this.formBuilder.control(50, Validators.required),
      format: this.formBuilder.control(FormatEnum.SQL, Validators.required),
      tableName: this.formBuilder.control('mockez', Validators.required),
      isIncludeCreateTable: this.formBuilder.control(false, Validators.required)
    });
    this.formatsSupported = [
      FormatEnum.SQL,
      FormatEnum.CSV,
      FormatEnum.JSON,
      FormatEnum.XML
    ];
  }

  public ngOnInit(): void {
    this.table.valueChanges.subscribe((changes: any) => {
      this.valueOnChange();
    });
    this.configuration.valueChanges.subscribe((changes: any) => {
      this.valueOnChange();
    })
    this.table.insert(this.table.length, this.buildFieldDefault());
    this.table.insert(this.table.length, this.buildFieldDefault());
    this.table.insert(this.table.length, this.buildFieldDefault());
    this.table.insert(this.table.length, this.buildFieldDefault());
    this.table.insert(this.table.length, this.buildFieldDefault());
  }

  public buildFieldDefault(): FormGroup {
    return new FormGroup({
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

  public insertField(index?: number): void {
    this.data = [];
    this.table.insert(index || this.table.length, this.buildFieldDefault());
  }

  public removeField(index: number): void {
    this.data = [];
    this.table.removeAt(index);
  }

  public buildGenerateReq(): GenerateReq {
    const fields: Field[] = this.table.controls.map((field: FormGroup) => ({
      id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
      name: field.get('name')?.value,
      sqlType: {
        id: field.get('sqlType')?.value.id,
        version: field.get('version')?.value.version | 0
      },
      generateType: {
        id: field.get('generateType')?.value.id,
        version: field.get('generateType')?.value.version | 0
      },
      version: 0
    }));
    return {
      row: this.configuration.get('row')?.value,
      fields
    };
  }

  public previewOnClick(): void {
    this.isDisplayPreview = true;
    if (!this.data.length) {
      this.generateService.generate(this.buildGenerateReq())
        .subscribe((data: any[]) => {
          this.data = data;
        });
    }
  }

  public downloadOnClick(): void {
    if (!this.data.length) {
      this.generateService.generate(this.buildGenerateReq())
        .subscribe((data: any[]) => {
          this.data = data;
          this.startDownload();
        });
    } else {
      this.startDownload();
    }
  }

  private startDownload() {
    const format: FormatEnum = this.configuration.get('format')?.value;
    let blob: Blob;
    switch (format) {
      case FormatEnum.XML:
        blob = new Blob(this.converterService.JSONArrayToXML(this.data));
        break;
      case FormatEnum.CSV:
        blob = new Blob(this.converterService.JSONArrayToCSV(this.data));
        break;
      case FormatEnum.JSON:
        blob = new Blob(this.converterService.JSONArrayToJSON(this.data));
        break;
      case FormatEnum.SQL:
        blob = new Blob(this.converterService.JSONArrayToSQL(this.configuration.get('tableName')?.value!, this.data)
          .map((value: string) => value + '\n'));
        break;
      default:
        throw new Error(`Invalid format ${format}`);
    }
    saveAs(blob, `${(this.configuration.get('tableName')?.value || 'mockez')}_${Date.now()}.${format.toLowerCase()}`);
  }

  public changeFormat(format: FormatEnum): void {
    this.configuration.get('format')?.setValue(format);
  }

  public selectTypeOnClick(type: SQLType | GenerateType, rowNumber: number, isSQLType: boolean): void {
    this.selectTypeOption = {
      isSQLType,
      type,
      rowNumber
    };
    this.isDisplaySelectType = true;
  }

  public selectTypeUpdate(type: SQLType | GenerateType): void {
    if (type !== this.selectTypeOption.type) {
      this.data = [];
    }
    if (this.selectTypeOption.isSQLType) {
      this.table.controls[this.selectTypeOption.rowNumber].get('sqlType')?.setValue({
        id: type.id,
        code: type.code
      });
    } else {
      this.table.controls[this.selectTypeOption.rowNumber].get('generateType')?.setValue({
        id: type.id,
        code: type.code,
        category: (type as GenerateType).category
      });
    }
    this.isDisplaySelectType = false;
  }

  public valueOnChange(): void {
    this.data = [];
  }
}
