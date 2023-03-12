import { Component, Injector, Input } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { ChooseTypeModal, ChooseTypeModalOptions } from '@shared/modal/choose-type/choose-type.modal';
import { GenerateTypeModel } from '@core/domain/model/generate-type.model';
import { SqlTypeModel } from '@core/domain/model/sql-type.model';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

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
export class TableDetailComponent extends AbstractSharedComponent {
  @Input('table') formGroup: FormGroup<{
    name: FormControl;
    fields: FormArray<FormGroup<Controls>>;
  }>;

  constructor(
    injector: Injector
  ) {
    super(injector);
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
      .subscribe((type: GenerateTypeModel | SqlTypeModel): void => {
        if (type) {
          control.setValue(type);
        }
      });
  }

}
