import { Component } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { TableService } from '@core/service/table.service';
import { Table } from '@app/core/model/table';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';

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
    private tableService: TableService,
    private appConfigProviderService: AppConfigProviderService
  ) {
    const schemaId: string = activatedRoute.snapshot.queryParams['schemaId'];
    if (!schemaId) {
      const schemaIdStorage = appConfigProviderService.currentSchemaId;
      if (schemaIdStorage) {
        this.router.navigate(['/table'], { queryParams: { schemaId } }).then();
      } else {
        this.router.navigate(['/project']).then(() => {
          this.modalProvider.showError({
            body: 'Please select a schema before navigating to table.'
          });
        });
      }
    } else {
      this.tableService.getTablesBySchema(schemaId).subscribe((tables: Table[]) => {
        appConfigProviderService.currentSchemaId = schemaId;
        this.tables = tables;
      });
    }
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
