import { Component } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { TableService } from '@core/service/table.service';
import { Table } from '@app/core/model/table';

@Component({
  selector: 'app-tables',
  templateUrl: './tables.component.html',
  styleUrls: ['./tables.component.scss']
})
export class TablesComponent {
  tables: Table[] = [];

  constructor(
    private modalService: ModalService,
    private router: Router,
    private activatedRoute: ActivatedRoute,
    private modalProvider: ModalProvider,
    private tableService: TableService
  ) {
    this.activatedRoute.queryParams.subscribe((params) => {
      const schemaId = params['schemaId'];
      if (!schemaId) {
        this.router.navigate(['/project']).then(() => {
          this.modalProvider.showError({
            body: 'Please select a schema before navigating to table.'
          });
        });
      } else {
        this.tableService.getTablesBySchema(schemaId).subscribe((tables: Table[]) => {
          this.tables = tables;
        });
      }
    });
  }

  openDetail(id: string | undefined): void {
    if (!id) {
      console.error('Please provide a unique identifier');
      return;
    }
    this.router.navigate(['/table/' + id])
      .then(() => {
      });
  }
}
