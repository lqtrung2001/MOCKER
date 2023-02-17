import { Component, Injector, Input } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';

/**
 * @author Do Quoc Viet
 * @class TableComponent
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
  selector: 'moc-table',
  templateUrl: 'table.component.html',
  styleUrls: ['table.component.scss']
})
export class TableComponent extends AbstractComponent {
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
      generateType: this.formBuilder.control('undefined', [Validators.required]),
      sqlType: this.formBuilder.control('undefined', []),
      option: this.formBuilder.group({
        blank: this.formBuilder.control(undefined, [])
      }, [])
    });
    this.formGroup.controls.fields.push(field);
  }

  removeField(index: number) {
    this.formGroup.controls.fields.removeAt(index);
  }

}