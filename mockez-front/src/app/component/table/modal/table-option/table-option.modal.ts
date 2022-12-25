import { Component } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormatEnum } from '@core/config/format.enum';

export interface TableOptionModalOptions {
  name?: string;
  type: FormatEnum;
  row: number;
}

@Component({
  selector: 'app-table-option-modal',
  templateUrl: 'table-option.modal.html',
  styleUrls: ['table-option.modal.scss']
})
export class TableOptionModal extends Modal {

  options: TableOptionModalOptions;
  formGroup: FormGroup;
  isShowPopup: boolean = false;
  selectedType: FormatEnum;
  formatSupported: FormatEnum[] = [];

  override onInjectInputs(options: TableOptionModalOptions) {
    this.options = options;
    this.formGroup.patchValue(this.options);
    this.selectedType = options?.type;
  }

  constructor(
    private formBuilder: FormBuilder
  ) {
    super();
    this.formGroup = formBuilder.group({
      name: formBuilder.control(''),
      row: formBuilder.control(1)
    });
    this.formatSupported.push(
      FormatEnum.JSON,
      FormatEnum.CSV,
      FormatEnum.XML,
      FormatEnum.SQL
    );
  }

  selectFormat(type: FormatEnum) {
    this.isShowPopup = false;
    this.selectedType = type;
  }

  submit(): void {
    const { name, row } = this.formGroup.getRawValue();
    const options: TableOptionModalOptions = {
      name,
      type: this.selectedType,
      row
    };
    this.close(options);
  }
}
