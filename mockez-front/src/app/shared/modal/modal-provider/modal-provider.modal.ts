import { Injectable } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { DialogModal, DialogModalOptions } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { Observable } from 'rxjs';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
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
    return this.modalService.open(DialogModal, {
      ...dialogModalOptions,
      title: 'Confirmation',
      btnCancel: true,
      btnOk: true
    }).onResult();
  }

  public showError(dialogModalOptions: DialogModalOptions): Observable<any> {
    return this.modalService.open(DialogModal, {
      ...dialogModalOptions,
      title: 'Error',
      btnOk: true
    }).onResult();
  }

  public showWarning(dialogModalOptions: DialogModalOptions): Observable<any> {
    return this.modalService.open(DialogModal, {
      ...dialogModalOptions,
      title: 'Warning',
      btnOk: true
    }).onResult();
  }

  public showInformation(message: string): Observable<any> {
    return this.modalService.open(DialogModal, {
      body: message,
      title: 'Information',
      btnOk: true
    }).onResult();
  }

}
