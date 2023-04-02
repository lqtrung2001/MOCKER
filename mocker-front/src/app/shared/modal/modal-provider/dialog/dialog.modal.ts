import { Component, Injector } from '@angular/core';
import { AbstractModal } from '@core/common/abstract.modal';

/**
 * @author Do Quoc Viet
 */

export interface DialogModalOptions {
  title?: string;
  body?: string;
  detail?: string;
}

export interface DialogModalOptionsCustom extends DialogModalOptions {
  type?: 'CONFIRMATION' | 'ERROR' | 'WARNING' | 'INFORMATION';
}

@Component({
  selector: 'moc-dialog-modal',
  templateUrl: 'dialog.modal.html',
  styleUrls: ['dialog.modal.scss']
})
export class DialogModal extends AbstractModal {
  override options: DialogModalOptionsCustom;
  defaultOptions: DialogModalOptionsCustom = {
    type: 'CONFIRMATION'
  };

  override onInjectInputs(dialogModalOptionsCustom: DialogModalOptionsCustom): void {
    this.options = {
      ...this.defaultOptions,
      ...dialogModalOptionsCustom
    };
  }

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  get color(): string {
    switch (this.options.type) {
      case 'ERROR':
        return 'red';
      case 'WARNING':
        return 'yellow';
      default:
        return 'blue';
    }
  }

  get isShowBtnCancel(): boolean {
    return this.options.type === 'CONFIRMATION' || this.options.type !== 'ERROR';
  }

  get isShowBtnOK(): boolean {
    return true;
  }

}
