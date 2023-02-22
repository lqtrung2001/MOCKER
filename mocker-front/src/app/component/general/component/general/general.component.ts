import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Action } from '@shared/component/action/action.component';
import { ChooseTypeModal } from '@shared/modal/choose-type/choose-type.modal';

/**
 * @author Do Quoc Viet
 * @class GeneralComponent
 * @date 05/02/2023
 */

type Controls = {
  rows: FormControl;
  format: FormControl;
}

@Component({
  selector: 'moc-general',
  templateUrl: 'general.component.html',
  styleUrls: ['general.component.scss']
})
export class GeneralComponent extends AbstractComponent {
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      rows: this.formBuilder.control(1000, [Validators.required]),
      format: this.formBuilder.control('SQL', [Validators.required])
    });
  }

  get supportedFormat(): Action[] {
    return [{
      id: '1',
      icon: 'fa-regular fa-database',
      label: 'SQL',
      click: () => {
        this.formGroup.controls.format.setValue('SQL');
      }
    }, {
      id: '2',
      icon: 'fa-sharp fa-regular fa-paperclip-vertical',
      label: 'JSON',
      click: () => {
        this.formGroup.controls.format.setValue('JSON');
      }
    }, {
      id: '3',
      icon: 'fa-regular fa-file-excel',
      label: 'XML',
      click: () => {
        this.formGroup.controls.format.setValue('XML');
      }
    }, {
      id: '4',
      icon: 'fa-regular fa-file-csv',
      label: 'CSV',
      click: () => {
        this.formGroup.controls.format.setValue('CSV');
      }
    }];
  }

}
