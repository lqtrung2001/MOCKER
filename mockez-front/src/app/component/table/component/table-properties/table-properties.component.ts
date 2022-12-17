import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Table } from '@core/model/table';
import { TableService } from '@core/service/table.service';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ModalService } from '@app/shared/modal/modal-service/modal-service.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-table-properties',
  templateUrl: './table-properties.component.html',
  styleUrls: ['./table-properties.component.scss']
})
export class TablePropertiesComponent {

  table: Table;
  formGroup: FormGroup;

  constructor(
    private activatedRoute: ActivatedRoute,
    private tableService: TableService,
    private router: Router,
    private formBuilder: FormBuilder,
    private modalService: ModalService,
    private modalProvider: ModalProvider
  ) {
    this.formGroup = formBuilder.group({
      id: formBuilder.control(''),
      name: formBuilder.control(''),
      description: formBuilder.control(''),
      fields: formBuilder.control([])
    });
    const id: string = activatedRoute.snapshot.params['id'];
    if (!id) {
      this.router.navigate(['/project']).then(() => {
        modalProvider.showError({
          body: 'Table not found, please choose a table'
        });
      });
    } else {
      tableService.getTable(id).subscribe((table: Table) => {
        this.formGroup.patchValue(table);
        this.table = table;
        console.log(this.formGroup);
        console.log(table);
      });
    }
  }

  selectSQLType(id?: string): void {

  }

  selectGenerateType(id?: string): void {

  }

  insertField(): void {

  }

  removeField(id: string | undefined): void {
    if (!id) {
      console.error('Invalid id');
      return;
    }

  }


}
