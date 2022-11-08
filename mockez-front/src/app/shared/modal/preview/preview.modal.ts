import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { DataProviderService } from '@shared/service/data-provider.service';

@Component({
  selector: 'app-preview',
  templateUrl: './preview.modal.html',
  styleUrls: ['./preview.modal.scss']
})
export class PreviewModal extends Modal {

  data: any[] = [];
  isTable: boolean = false;

  constructor(
    public dataProvider: DataProviderService
  ) {
    super();
  }

  onInjectInputs(input: any): void {
    this.data = input;
  }
}
