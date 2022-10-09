import { Component, OnInit } from '@angular/core';
import { GenerateReq, GenerateService } from '@core/service/generate.service';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { saveAs } from 'file-saver';
import { ConverterService } from '@core/util/converter.service';
import { FormatEnum } from '@core/config/format.enum';

@Component({
  selector: 'app-general',
  templateUrl: './general.component.html',
  styleUrls: ['./general.component.scss']
})
export class GeneralComponent implements OnInit {

  public isShowSelectType: boolean;
  public isShowPreview: boolean;
  public isSelectFormat: boolean;
  public data: any[];
  public table: FormArray<FormGroup>;
  public config: FormGroup;
  public formatsSupported: FormatEnum[];

  constructor(
    private generateService: GenerateService,
    private converterService: ConverterService
  ) {
    this.isShowSelectType = false;
    this.isShowPreview = false;
    this.isSelectFormat = false;
    this.data = [];
    this.table = new FormArray<FormGroup>([]);
    this.config = new FormGroup({
      row: new FormControl(50, Validators.required),
      format: new FormControl(FormatEnum.CSV, Validators.required),
      tableName: new FormControl('mockez', Validators.required),
      isIncludeCreateTable: new FormControl(true, Validators.required)
    });
    this.formatsSupported = [
      FormatEnum.SQL,
      FormatEnum.CSV,
      FormatEnum.JSON,
      FormatEnum.XML
    ];
  }

  public ngOnInit(): void {
    const field: FormGroup = new FormGroup({
      name: new FormControl('', Validators.required),
      sqlType: new FormControl('UUID', Validators.required),
      generateType: new FormControl('UUID', Validators.required),
      option: new FormControl('', Validators.required)
    });
    this.table.insert(0 || this.table.length, field);
  }

  public insertField(index?: number) {
    this.data = [];
    const field: FormGroup = new FormGroup({
      name: new FormControl('', Validators.required),
      sqlType: new FormControl('UUID', Validators.required),
      generateType: new FormControl('UUID', Validators.required),
      option: new FormControl('', Validators.required)
    });
    this.table.insert(index || this.table.length, field);
  }

  public removeField(index: number): void {
    this.data = [];
    this.table.removeAt(index);
  }

  public buildGenerateReq(): GenerateReq {
    return {
      row: this.config.get('row')?.value,
      fields: [{
        id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
        name: 'name',
        sqlType: {
          id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
          version: 0
        },
        generateType: {
          id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
          version: 0
        },
        version: 0
      }, {
        id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
        name: 'last_name',
        sqlType: {
          id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
          version: 0
        },
        generateType: {
          id: '68d318cb-5db2-4b60-9f17-61762ebf823d',
          version: 0
        },
        version: 0
      }]
    };
  }

  public previewOnClick(): void {
    this.isShowPreview = true;
    if (!this.data.length) {
      this.generateService.generate(this.buildGenerateReq())
        .subscribe((data: any[]) => {
          this.data = data;
        });
    }
  };

  public downloadOnClick(): void {
    if (!this.data.length) {
      this.generateService.generate(this.buildGenerateReq())
        .subscribe((data: any[]) => {
          this.data = data;
          const format: FormatEnum = this.config.get('format')?.value;
          let blob: Blob;
          switch (format) {
            case FormatEnum.XML:
              blob = new Blob(this.converterService.JSONArrayToXML(data));
              break;
            case FormatEnum.CSV:
              blob = new Blob(this.converterService.JSONArrayToCSV(data));
              break;
            case FormatEnum.JSON:
              blob = new Blob(this.converterService.JSONArrayToJSON(data));
              break;
            case FormatEnum.SQL:
              blob = new Blob(this.converterService.JSONArrayToSQL(data));
              break;
            default:
              throw new Error(`Invalid format ${format}`);
          }
          saveAs(blob, `${(this.config.get('tableName')?.value || 'mockez')}.${format.toLowerCase()}`);
        });
    }
  }

  public changeFormat(format: FormatEnum): void {
    this.config.get('format')?.setValue(format);
  }
}
