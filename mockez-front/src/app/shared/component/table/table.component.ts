import { Component, Input } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { SQLType } from '@core/model/SQLType.modal';
import { GenerateType } from '@core/model/GenerateType.modal';
import { SelectTypeOption } from '@app/general/component/general/general.component';
import { DataProviderService } from '@shared/service/data-provider.service';
import { ModalService } from '@app/shared/service/modal.service';
import { SelectTypeComponent } from '@shared/component/select-type/select-type.component';

@Component({
  selector: 'app-table',
  templateUrl: './table.component.html',
  styleUrls: ['./table.component.scss']
})
export class TableComponent {

  @Input() table!: FormArray<FormGroup>;

  public isDisplaySelectType: boolean = false;
  public selectTypeOption!: SelectTypeOption;

  constructor(
    private dataProviderService: DataProviderService,
    private formBuilder: FormBuilder,
    private modalService: ModalService
  ) {
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
      this.dataProviderService.data = [];
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

  public valueOnChange(): void {
    this.dataProviderService.data = [];
  }

  public insertField(index?: number): void {
    this.dataProviderService.data = [];
    this.table.insert(index || this.table.length, this.buildFieldDefault());
  }

  public removeField(index: number): void {
    this.dataProviderService.data = [];
    this.table.removeAt(index);
  }

}
