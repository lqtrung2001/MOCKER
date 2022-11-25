import { Component } from '@angular/core';
import { DataProviderService } from '@shared/service/data-provider.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { SelectTypeModal } from '@shared/modal/select-type/select-type.modal';
import { GenerateType } from '@core/model/generate-type';
import { SQLType } from '@core/model/sql-type';

@Component({
  selector: 'app-table',
  templateUrl: './table.component.html',
  styleUrls: ['./table.component.scss']
})
export class TableComponent {

  constructor(
    public dataProvider: DataProviderService,
    private modalService: ModalService
  ) {
  }

  public selectTypeOnClick(type: SQLType | GenerateType, rowNumber: number, isSQLType: boolean): void {
    this.modalService.open(SelectTypeModal, {
      isSQLType,
      type
    }).onResult().subscribe((typeReturn: SQLType | GenerateType) => {
      if (typeReturn !== type) {
        this.dataProvider.data = [];
      }
      if (isSQLType) {
        this.dataProvider.table.controls[rowNumber].get('sqlType')?.setValue({
          id: typeReturn.id,
          code: typeReturn.code
        });
      } else {
        this.dataProvider.table.controls[rowNumber].get('generateType')?.setValue({
          id: typeReturn.id,
          code: typeReturn.code,
          category: (typeReturn as GenerateType).category
        });
      }
    });
  }
}
