import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector, OnInit } from '@angular/core';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';

/**
 * @author Do Quoc viet
 * @date 22/02/2023
 */

@Component({
  selector: 'moc-schemas',
  templateUrl: 'schemas.component.html',
  styleUrls: ['schemas.component.scss']
})
export class SchemasComponent extends AbstractComponent implements OnInit {
  schemas: Schema[] = [];
  selects: string[] = [];

  constructor(
    injector: Injector,
    private schemaService: SchemaService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.schemaService.getSchemas().subscribe((schemas: Schema[]): void => {
      this.schemas = schemas;
    });
  }

  isCheck(id: string): boolean {
    return !!this.selects.find((value: string) => value === id);
  }

  select(id: string): void {
    if (this.isCheck(id)) {
      this.selects = this.selects.filter((value: string) => value !== id);
    } else {
      this.selects.push(id);
    }
  }

  get isSelectAll(): boolean {
    return this.selects.length === this.schemas.length;
  }

  selectAll(): void {
    if (this.isSelectAll) {
      this.selects = [];
    } else {
      this.selects = this.schemas.map((schema: Schema) => schema.id);
    }
  }

  delete(id: string): void {
    // delete project
  }

  get canDeleteSelected(): boolean {
    return !!this.selects.length;
  }

  deleteSelected(): void {
    if (!this.canDeleteSelected) {
      return;
    }
    // delete projects
  }
}
