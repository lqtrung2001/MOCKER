import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { DialogOption } from '@shared/modal/modal-provider/modal-provider.modal';

@Component({
  selector: 'app-dialog-modal',
  templateUrl: 'dialog.modal.html',
  styleUrls: ['dialog.modal.scss']
})
export class DialogModal extends Modal {

  option: DialogOption = {
    title: 'Dialog'
  };

  onInjectInputs(option: DialogOption): void {
    this.option = option;
  }

}
