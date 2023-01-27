import { Component, Injector } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';

/**
 * @author Do Quoc Viet
 */

export interface DialogModalOptions {
  title?: string;
  body?: string;
  detail?: string;
  btnCancel?: boolean;
  btnOk?: boolean;
}

@Component({
  selector: 'moc-dialog-modal',
  templateUrl: 'dialog.modal.html',
  styleUrls: ['dialog.modal.scss']
})
export class DialogModal extends AbstractModal {
  override options: DialogModalOptions;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
