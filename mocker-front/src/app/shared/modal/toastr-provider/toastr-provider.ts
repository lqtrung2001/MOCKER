import { Injectable } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import {
  ToastrModal,
  ToastrModalCustomOptions,
  ToastrModalOptions,
  ToastrPosition,
  ToastrType
} from '@shared/modal/toastr-provider/toastr/toastr.modal';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ToastrProvider {
  toastrPositions: ToastrPosition[] = [];
  options: ToastrModalOptions;

  constructor(
    private modalService: ModalService
  ) {
  }

  showError(toastrModalOptions: ToastrModalOptions): void {
    const index: number = this.init();
    const options: ToastrModalCustomOptions = {
      title: 'Error',
      ...toastrModalOptions,
      type: ToastrType.ERROR,
      id: index
    };
    this.show(options);
  }

  showWarning(toastrModalOptions: ToastrModalOptions): void {
    const index: number = this.init();
    const options: ToastrModalCustomOptions = {
      title: 'Warning',
      ...toastrModalOptions,
      type: ToastrType.WARNING,
      id: index
    };
    this.show(options);
  }

  showInformation(toastrModalOptions: ToastrModalOptions): void {
    const index: number = this.init();
    const options: ToastrModalCustomOptions = {
      title: 'Information',
      ...toastrModalOptions,
      type: ToastrType.INFORMATION,
      id: index
    };
    this.show(options);
  }

  showSuccess(toastrModalOptions: ToastrModalOptions): void {
    const index: number = this.init();
    const options: ToastrModalCustomOptions = {
      title: 'Success',
      ...toastrModalOptions,
      type: ToastrType.SUCCESS,
      id: index
    };
    this.show(options);
  }

  init(): number {
    const index: number = Math.random();
    this.toastrPositions.forEach((toastrPosition: ToastrPosition, i: number): void => {
      i++;
      toastrPosition.bottom = i;
      toastrPosition.zIndex = 100 - i;
    });
    this.toastrPositions.unshift({
      id: index,
      bottom: 0,
      zIndex: 100
    });
    return index;
  }

  private show(toastrModalCustomOptions: ToastrModalCustomOptions): void {
    this.modalService.open(ToastrModal, toastrModalCustomOptions);
  }

}
