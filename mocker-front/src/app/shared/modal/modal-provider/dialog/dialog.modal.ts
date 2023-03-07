import { Component, Injector } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';

/**
 * @author Do Quoc Viet
 * @class DialogModal
 * @date 03/03/2023
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

  override onInjectInputs(dialogModalOptionsCustom: DialogModalOptionsCustom) {
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

  get icon(): string {
    let icon: string;
    switch (this.options.type) {
      case 'CONFIRMATION':
        icon = 'fa-solid fa-circle-question';
        break;
      case 'ERROR':
        icon = 'fa-sharp fa-solid fa-circle-xmark';
        break;
      case 'WARNING':
        icon = 'fa-solid fa-triangle-exclamation';
        break;
      default:
        icon = 'fa-solid fa-circle-info';
    }
    return `${icon} text-${this.color} text-7xl align-middle`;
  }

  get isShowBtnCancel(): boolean {
    const type = this.options.type;
    return type === 'CONFIRMATION' || type === 'ERROR';
  }

  get isShowBtnOK(): boolean {
    return this.options.type !== 'ERROR';
  }

}
