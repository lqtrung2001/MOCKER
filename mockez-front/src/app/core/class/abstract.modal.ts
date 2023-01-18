import { Modal } from '@shared/modal/modal-service/model/modal.model';

export class AbstractModal extends Modal {

  options: any;

  onInjectInputs(input: any): void {
    this.options = input;
  }

}
