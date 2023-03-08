import { Component, Injector, Input } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';
import { Table } from '@core/model/table';
import { TableConfigModal, TableConfigModalOptions } from '@app/component/schema/modal/table-config/table-config.modal';
import { TableService } from '@core/service/table.service';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-table',
  templateUrl: 'table.component.html',
  styleUrls: ['table.component.scss']
})
export class TableComponent extends AbstractSharedComponent {
  @Input() table: Table;

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
      .subscribe((table: Table): void => {
        this.table = table;
      });
  }
}
