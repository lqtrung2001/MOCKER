import { Component } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { TableService } from '@core/service/table.service';
import { Table } from '@app/core/model/table';
import { AppConfigService } from '@core/service/app-config.service';
import { FormBuilder, FormControl } from '@angular/forms';
import { SaveTableModal, SaveTableModalOptions } from '@app/component/table/modal/save-table/save-table.modal';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-tables',
  templateUrl: 'tables.component.html',
  styleUrls: ['tables.component.scss']
})
export class TablesComponent {

  storage: Table[] = [];
  tables: Table[] = [];
  schema: Schema;
  filter: FormControl;

  constructor(
    private modalService: ModalService,
    private router: Router,
    private activatedRoute: ActivatedRoute,
    private modalProvider: ModalProvider,
    private formBuilder: FormBuilder,
    private tableService: TableService,
    private appConfigProviderService: AppConfigService,
    private schemaService: SchemaService
  ) {
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value: string) => {
      this.tables = this.storage.filter((table: Table) => table.name?.toUpperCase().includes(value.toUpperCase())
        || table.description?.toUpperCase().includes(value.toUpperCase()));
    });
    const schemaId: string = activatedRoute.snapshot.queryParams['schemaId'];
    if (!schemaId) {
      this.router.navigate(['/project']).then(() => {
        this.modalProvider.showError({
          body: 'Please select a schema before navigating to table.'
        });
      });
    } else {
      this.schemaService.getSchema(schemaId).subscribe((schema: Schema) => {
        this.schema = schema;
        this.tableService.getTablesBySchema(schemaId).subscribe((tables: Table[]) => {
          this.tables = tables;
          this.storage = tables;
        });
      });
    }
  }

  create(): void {
    this.modalService.open(SaveTableModal, {}).onResult().subscribe((close: SaveTableModalOptions) => {
      if (close) {
        const table: Table = new Table();
        table.name = close.name;
        table.description = close.description;
        table.schema = this.schema;
        this.tableService.saveOrUpdate(table).subscribe((id: string) => {
          this.router.navigate(['table/' + id]).then();
        });
      }
    });
  }
}
