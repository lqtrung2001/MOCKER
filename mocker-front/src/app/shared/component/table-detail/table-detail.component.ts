import { Component, Injector, Input } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { ChooseTypeModal, ChooseTypeModalOptions } from '@shared/modal/choose-type/choose-type.modal';
import { GenerateType } from '@core/model/generate-type';
import { SQLType } from '@core/model/sql-type';

/**
 * @author Do Quoc Viet
 * @class TableDetailComponent
 * @date 11/02/2023
 */

type Controls = {
  fieldName: FormControl;
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
export class TableDetailComponent extends AbstractComponent {
  @Input() class: string;
  formGroup: FormGroup<{
    fields: FormArray<FormGroup<Controls>>
  }>;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      fields: this.formBuilder.array<FormGroup<Controls>>([])
    });
    this.insertField();
    this.insertField();
    this.insertField();
    this.insertField();
    this.insertField();
    this.insertField();
  }

  insertField(): void {
    const field: FormGroup = this.formBuilder.group<Controls>({
      fieldName: this.formBuilder.control(undefined, [Validators.required]),
      generateType: this.formBuilder.control(undefined, [Validators.required]),
      sqlType: this.formBuilder.control(undefined, []),
      option: this.formBuilder.group({
        blank: this.formBuilder.control(undefined, [])
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
    this.modalService.open(ChooseTypeModal, options).onResult()
      .subscribe((type: GenerateType | SQLType): void => {
        if (type) {
          control.setValue(type);
        }
      });
  }

}
