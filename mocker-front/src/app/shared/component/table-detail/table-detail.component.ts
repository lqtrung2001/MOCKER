import { Component, Injector, Input, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import {
  ChooseTypeModal,
  ChooseTypeModalCloseOptions,
  ChooseTypeModalOptions
} from '@shared/modal/choose-type/choose-type.modal';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { UniqueNameValidator } from '@shared/validator/unique-name.validator';
import { UnSpaceValidator } from '@shared/validator/un-space.validator';

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
    blank: FormControl,
    unique: FormControl
  }>;
}

@Component({
  selector: 'moc-table-detail',
  templateUrl: 'table-detail.component.html',
  styleUrls: ['table-detail.component.scss']
})
export class TableDetailComponent extends AbstractSharedComponent implements OnInit {
  @Input('fields') formArray: FormArray<FormGroup<FieldControls>>;
  @Input() relations: string[] = [];

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  ngOnInit(): void {
    // The default fields
    if (!this.formArray.length) {
      this.insertField();
      this.insertField();
      this.insertField();
    }
  }

  insertField(): void {
    const index: number = this.formArray.length;
    const field: FormGroup<FieldControls> = this.formBuilder.group({
      id: this.formBuilder.control(undefined, []),
      name: this.formBuilder.control(undefined, [Validators.required, UniqueNameValidator(this.formArray, index), UnSpaceValidator()]),
      generateType: this.formBuilder.control(undefined, [Validators.required]),
      sqlType: this.formBuilder.control(undefined, []),
      option: this.formBuilder.group({
        id: this.formBuilder.control(undefined, []),
        blank: this.formBuilder.control(0, []),
        unique: this.formBuilder.control(false, [])
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
      .subscribe((closeOptions: ChooseTypeModalCloseOptions): void => {
        if (closeOptions && closeOptions.clear) {
          control.setValue(undefined);
        }
        if (closeOptions && closeOptions.type) {
          control.setValue(closeOptions.type);
        }
      });
  }

  isReadonly(id: string): boolean {
    return this.relations?.includes(id);
  }

}
