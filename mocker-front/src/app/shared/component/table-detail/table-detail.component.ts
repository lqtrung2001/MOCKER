import { Component, Injector, Input, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { ChooseTypeModal, ChooseTypeModalOptions } from '@shared/modal/choose-type/choose-type.modal';
import { GenerateType } from '@core/model/generate-type';
import { SQLType } from '@core/model/sql-type';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';

/**
 * @author Do Quoc Viet
 */

export type Controls = {
  name: FormControl;
  generateType: FormControl;
  sqlType: FormControl;
  option: FormGroup<{
    blank: FormControl
  }>;
}

@Component({
  selector: 'moc-table-detail',
  templateUrl: 'table-detail.component.html',
  styleUrls: ['table-detail.component.scss']
})
export class TableDetailComponent extends AbstractSharedComponent implements OnInit {
  @Input('table') formGroup: FormGroup<{
    name: FormControl;
    fields: FormArray<FormGroup<Controls>>;
  }>;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  ngOnInit(): void {
    // Default values is 3 fields
    if (!this.formGroup.controls.fields.length) {
      this.insertField();
      this.insertField();
      this.insertField();
    }
  }

  insertField(): void {
    const field: FormGroup = this.formBuilder.group<Controls>({
      name: this.formBuilder.control(undefined, [Validators.required]),
      generateType: this.formBuilder.control(undefined, [Validators.required]),
      sqlType: this.formBuilder.control(undefined, []),
      option: this.formBuilder.group({
        blank: this.formBuilder.control(0, [])
      }, [])
    });
    this.formGroup.controls.fields.push(field);
  }

  removeField(index: number) {
    this.formGroup.controls.fields.removeAt(index);
  }

  chooseType(control: FormControl, isGenerateType: boolean): void {
    const options: ChooseTypeModalOptions = {
      current: control.value,
      isGenerateType
    };
    this.modalService.open(ChooseTypeModal, options)
      .subscribe((type: GenerateType | SQLType): void => {
        if (type) {
          control.setValue(type);
        }
      });
  }

}
