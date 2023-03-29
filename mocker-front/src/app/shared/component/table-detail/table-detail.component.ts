import { Component, Injector, Input } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { ChooseTypeModal, ChooseTypeModalOptions } from '@shared/modal/choose-type/choose-type.modal';
import { GenerateTypeModel } from '@core/domain/model/entity/generate-type.model';
import { SqlTypeModel } from '@core/domain/model/entity/sql-type.model';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

/**
 * @author Do Quoc Viet
 */

export type FieldControls = {
  id: FormControl;
  name: FormControl;
  generateType: FormControl;
  sqlType: FormControl;
  option: FormGroup<{
    id: FormControl;
    blank: FormControl
  }>;
}

@Component({
  selector: 'moc-table-detail',
  templateUrl: 'table-detail.component.html',
  styleUrls: ['table-detail.component.scss']
})
export class TableDetailComponent extends AbstractSharedComponent {
  @Input('fields') formArray: FormArray<FormGroup<FieldControls>>;
  @Input() relations: string[] = [];

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  insertField(): void {
    const field: FormGroup<FieldControls> = this.formBuilder.group({
      id: this.formBuilder.control(undefined, []),
      name: this.formBuilder.control(undefined, [Validators.required]),
      generateType: this.formBuilder.control(undefined, [Validators.required]),
      sqlType: this.formBuilder.control(undefined, []),
      option: this.formBuilder.group({
        id: this.formBuilder.control(undefined, []),
        blank: this.formBuilder.control(0, [])
      }, [])
    });
    this.formArray.push(field);
  }

  removeField(index: number, id: string): void {
    if (this.isReadonly(id)) {
      return;
    }
    this.formArray.removeAt(index);
  }

  chooseType(control: FormControl, isGenerateType: boolean, id: string): void {
    if (this.isReadonly(id)) {
      return;
    }
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

  isReadonly(id: string): boolean {
    return this.relations.includes(id);
  }

}
