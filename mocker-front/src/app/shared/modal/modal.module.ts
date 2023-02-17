import { NgModule } from '@angular/core';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { NgIf, NgStyle, UpperCasePipe } from '@angular/common';
import { ToastrModal } from '@shared/modal/toastr-provider/toastr/toastr.modal';
import { ChooseTypeModal } from '@shared/modal/choose-type/choose-type.modal';

/**
 * @author Do Quoc Viet
 * @date 01/02/2023
 */

@NgModule({
  declarations: [
    DialogModal,
    ToastrModal,
    ChooseTypeModal
  ],
  exports: [],
  imports: [
    UpperCasePipe,
    NgIf,
    NgStyle
  ],
  providers: []
})
export class ModalModule {
}
