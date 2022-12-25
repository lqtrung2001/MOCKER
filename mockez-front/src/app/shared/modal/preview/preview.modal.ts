import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormatEnum } from '@core/config/format.enum';

export interface PreviewModalOptions {
  data: any[],
  format: FormatEnum
}

@Component({
  selector: 'app-preview-modal',
  templateUrl: './preview.modal.html',
  styleUrls: ['./preview.modal.scss']
})
export class PreviewModal extends Modal {

  options: PreviewModalOptions;

  tab: 'TABLE' | 'FORMAT';

  constructor() {
    super();
    this.tab = 'TABLE';
  }

  onInjectInputs(options: PreviewModalOptions): void {
    this.options = options;
  }
}
