import { Injectable } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import {
  DialogModal,
  DialogModalOptions,
  DialogModalOptionsCustom
} from '@shared/modal/modal-provider/dialog/dialog.modal';
import { Observable } from 'rxjs';

/**
 * @author  Do Quoc Viet
 * @class ModalProvider
 * @date 03/03/2023
 */

@Injectable({
  providedIn: 'root'
})
export class ModalProvider {

  constructor(
    private modalService: ModalService
  ) {
  }

  public showConfirmation(dialogModalOptions: DialogModalOptions): Observable<any> {
    const options: DialogModalOptionsCustom = {
      title: 'modal.dialog.confirmation',
      ...dialogModalOptions
    };
    return this.modalService.open(DialogModal, options);
  }

  public showError(dialogModalOptions: DialogModalOptions): Observable<any> {
    const options: DialogModalOptionsCustom = {
      title: 'modal.dialog.error',
      ...dialogModalOptions,
      type: 'ERROR'
    };
    return this.modalService.open(DialogModal, options);
  }

  public showWarning(dialogModalOptions: DialogModalOptions): Observable<any> {
    const options: DialogModalOptionsCustom = {
      title: 'modal.dialog.warning',
      ...dialogModalOptions,
      type: 'WARNING'
    };
    return this.modalService.open(DialogModal, options);
  }

  public showInformation(dialogModalOptions: DialogModalOptions): Observable<any> {
    const options: DialogModalOptionsCustom = {
      ...dialogModalOptions,
      title: 'modal.dialog.information',
      type: 'INFORMATION'
    };
    return this.modalService.open(DialogModal, options);
  }

}
