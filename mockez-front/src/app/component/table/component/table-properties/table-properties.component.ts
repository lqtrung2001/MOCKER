import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Table } from '@core/model/table';

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

  constructor(
    private activatedRoute: ActivatedRoute,
    private router: Router
  ) {
    this.activatedRoute.params.subscribe((params: any) => {
      const id = params['id'];
      if (!id) {
        console.error('Invalid provide a valid id');
        this.router.navigate(['/project']).then(() => {
        });
      }

    });
  }


}
