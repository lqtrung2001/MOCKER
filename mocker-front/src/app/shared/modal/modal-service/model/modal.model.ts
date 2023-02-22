import { ModalRef } from '@shared/modal/modal-service/model/modal-ref.model';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export abstract class Modal {
  modalInstance!: ModalRef;

  abstract onInjectInputs(input: any): void;

  public close(output?: any): void {
    document.body.style.overflow = 'auto';
    this.modalInstance.close(output);
  }

  public dismiss(output?: any): void {
    this.modalInstance.dismiss(output);
  }

}
