import { Component } from '@angular/core';
import { DataProviderService } from '@shared/service/data-provider.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-tables',
  templateUrl: './tables.component.html',
  styleUrls: ['./tables.component.scss']
})
export class TablesComponent {
  constructor(
    public dataProvider: DataProviderService,
    private modalService: ModalService,
    private router: Router
  ) {
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
