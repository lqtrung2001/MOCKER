import { Observable, Subject } from 'rxjs';
import { ComponentRef } from '@angular/core';
import {
  ModalContainerComponent
} from '@shared/modal/modal-service/component/modal-container/modal-container.component';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

export class ModalRef {

  private result$ = new Subject<any>();

  constructor(
    private modalContainer: ComponentRef<ModalContainerComponent>,
    private modal: ComponentRef<Modal>
  ) {
    this.modal.instance.modalInstance = this;
  }

  public close(output: any): void {
    this.result$.next(output);
    this.destroy$();
  }

  public dismiss(output: any): void {
    this.result$.error(output);
    this.destroy$();
  }

  public onResult(): Observable<any> {
    return this.result$.asObservable();
  }

  private destroy$(): void {
    this.modal.destroy();
    this.modalContainer.destroy();
    this.result$.complete();
  }

}
