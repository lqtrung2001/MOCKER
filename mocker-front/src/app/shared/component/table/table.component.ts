import { Component, EventEmitter, Injector, Input, Output } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { TableModel } from '@core/domain/model/entity/table.model';
import {
  TableConfigModal,
  TableConfigModalCloseOptions,
  TableConfigModalOptions
} from '@app/component/schema/modal/table-config/table-config.modal';
import { FieldModel } from '@core/domain/model/entity/field.model';
import { PreviewModal, PreviewModalOptions } from '@shared/modal/preview/preview.modal';
import { DataDetail } from '@core/domain/model/data.model';
import { DownloadUtil } from '@core/util/download.util';
import { FormatEnum } from '@core/domain/enum/format.enum';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-table',
  templateUrl: 'table.component.html',
  styleUrls: ['table.component.scss']
})
export class TableComponent extends AbstractSharedComponent {
  @Input() table: TableModel;
  @Input() current: FieldModel | undefined;
  @Input() foreignKeys: string[] = [];
  @Input() relations: string[] = [];
  @Input() dataDetail: DataDetail[] = [];
  @Output() relationMapping: EventEmitter<FieldModel> = new EventEmitter();
  @Output() refresh: EventEmitter<TableModel> = new EventEmitter();
  @Input() format: FormatEnum;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  openDetail(): void {
    const options: TableConfigModalOptions = {
      table: this.table,
      relations: this.relations
    };
    this.modalService.open(TableConfigModal, options)
      .subscribe((closeOptions: TableConfigModalCloseOptions) => {
        if (closeOptions) {
          this.table = closeOptions.table;
          if (closeOptions.change) {
            this.refresh.emit(this.table);
          }
        }
      });
  }

  preview(): void {
    const options: PreviewModalOptions = {
      data: this.dataDetail,
      download: () => {
        DownloadUtil.download(this.dataDetail, this.format, this.table.name, this.table.name);
      },
      tableName: this.table.name,
      format: this.format
    };
    this.modalService.open(PreviewModal, options);
  }

}
