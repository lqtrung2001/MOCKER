import { ChangeDetectorRef, Component, Injector, OnInit, TemplateRef, ViewChild } from '@angular/core';
import { AbstractModal } from '@core/common/abstract.modal';
import { Tab } from '@shared/component/tab/tab.component';

/**
 * @author Do Quoc Viet
 * @class PreviewModal
 * @date 02/03/2023
 */

export interface PreviewModalOptions {
  data: any[];
  tableName?: string;
  download: () => void;
  format: 'SQL' | 'JSON' | 'XML' | 'CSV';
}

@Component({
  selector: 'moc-preview-modal',
  templateUrl: 'preview.modal.html',
  styleUrls: ['preview.modal.scss']
})
export class PreviewModal extends AbstractModal implements OnInit {
  override options: PreviewModalOptions;
  @ViewChild('table') table: TemplateRef<any>;
  @ViewChild('raw') raw: TemplateRef<any>;

  constructor(
    injector: Injector,
    private changeDetectorRef: ChangeDetectorRef
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.options.data = this.options.data.length > 100 ? this.options.data.slice(100) : this.options.data;
    this.changeDetectorRef.detectChanges();
  }

  get keys(): string[] {
    return Object.keys(this.options.data[0]);
  }

  get tabs(): Tab[] {
    return [{
      title: 'TABLE',
      icon: 'fa-regular fa-table',
      content: this.table
    }, {
      title: `RAW [${this.options.format}]`,
      icon: 'fa-regular fa-line-columns',
      content: this.raw
    }];
  }

}
