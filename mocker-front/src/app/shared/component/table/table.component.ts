import { Component, Injector, Input, OnInit } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';
import { Table } from '@core/model/table';
import { TableService } from '@core/service/table.service';
import { TableConfigModal, TableConfigModalOptions } from '@app/component/schema/modal/table-config/table-config.modal';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
 */

@Component({
  selector: 'moc-table',
  templateUrl: 'table.component.html',
  styleUrls: ['table.component.scss']
})
export class TableComponent extends AbstractSharedComponent implements OnInit {
  @Input() table: Table;

  constructor(
    injector: Injector,
    private tableService: TableService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.tableService.getTable(this.table.id).subscribe((table: Table): void => {
      this.table = table;
    });
  }

  openDetail(): void {
    const options: TableConfigModalOptions = {
      table: this.table
    };
    this.modalService.open(TableConfigModal, options);
  }
}
