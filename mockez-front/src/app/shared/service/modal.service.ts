import { Injectable } from '@angular/core';
import { DialogRef, DialogService } from '@progress/kendo-angular-dialog';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ModalService {

  constructor(
    private dialogService: DialogService
  ) {
  }

}
