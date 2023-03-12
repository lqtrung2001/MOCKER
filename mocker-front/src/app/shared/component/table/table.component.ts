import { Component, EventEmitter, Injector, Input, Output } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { TableModel } from '@core/domain/model/table.model';
import { TableConfigModal, TableConfigModalOptions } from '@app/component/schema/modal/table-config/table-config.modal';
import { TableService } from '@core/service/table.service';
import { FieldModel } from '@core/domain/model/field.model';

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
  @Output() map: EventEmitter<FieldModel> = new EventEmitter();

  constructor(
    injector: Injector,
    private tableService: TableService
  ) {
    super(injector);
  }

  openDetail(): void {
    const options: TableConfigModalOptions = {
      table: this.table
    };
    this.modalService.open(TableConfigModal, options)
      .subscribe((result: boolean) => {
        if (result) {
          this.refresh();
        }
      });
  }

  private refresh() {
    this.tableService.getTable(this.table.id)
      .subscribe((table: TableModel): void => {
        this.table = table;
      });
  }
}
