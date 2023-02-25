import { Component, Injector, Input } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';
import { Table } from '@core/model/table';
import { TableService } from '@core/service/table.service';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
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
    this.tableService.getTable('89192222-aa8e-4d66-82b5-190ef6f7d84f').subscribe((table: Table): void => {
      this.table = table;
    });
  }
}
