import { Component, Injector } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';

@Component({
  selector: 'moc-choose-type-modal',
  templateUrl: 'choose-type.modal.html',
  styleUrls: ['choose-type.modal.scss']
})
export class ChooseTypeModal extends AbstractModal {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
