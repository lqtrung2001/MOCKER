import { ModalRef } from '@shared/modal/modal-service/model/modal-ref.model';

/**
 * @author Do Quoc Viet
 */

export abstract class Modal {
  modalInstance!: ModalRef;

  abstract onInjectInputs(input: any): void;

  public close(output?: any): void {
    this.modalInstance.close(output);
  }

  public dismiss(output?: any): void {
    this.modalInstance.dismiss(output);
  }

}
