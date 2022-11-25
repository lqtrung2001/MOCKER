import { Injectable } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { Observable } from 'rxjs';

export interface DialogOption {
  title?: string;
  body?: string;
  detail?: string;
  btnCancel?: boolean;
  btnOk?: boolean;
}

@Injectable({
  providedIn: 'root'
})
export class ModalProvider {

  constructor(
    private modalService: ModalService
  ) {
  }

  public showConfirmation(option: DialogOption): Observable<any> {
    return this.modalService.open(DialogModal, {
      ...option,
      title: 'Confirmation',
      btnCancel: true,
      btnOk: true
    }).onResult();
  }

  public showError(option: DialogOption): Observable<any> {
    return this.modalService.open(DialogModal, {
      ...option,
      title: 'Error',
      btnOk: true
    }).onResult();
  }

  public showWarning(option: DialogOption): Observable<any> {
    return this.modalService.open(DialogModal, {
      ...option,
      title: 'Warning',
      btnOk: true
    }).onResult();
  }

  public showInformation(message: string): Observable<any> {
    return this.modalService.open(DialogModal, {
      title: 'Information',
      btnOk: true
    }).onResult();
  }

}
