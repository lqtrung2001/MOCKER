import { Component, EventEmitter, Injector, Input, Output } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { TableModel } from '@core/domain/model/table.model';
import { TableConfigModal, TableConfigModalOptions } from '@app/component/schema/modal/table-config/table-config.modal';
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
  @Input() current: FieldModel | undefined;
  @Input() foreignKeys: string[] = [];
  @Output() relationMapping: EventEmitter<FieldModel> = new EventEmitter();
  @Output() complete: EventEmitter<any> = new EventEmitter();

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  openDetail(): void {
    const options: TableConfigModalOptions = {
      table: this.table
    };
    this.modalService.open(TableConfigModal, options)
      .subscribe((result: TableModel) => {
        this.table = result;
      });
  }

}
