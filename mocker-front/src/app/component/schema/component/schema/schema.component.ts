import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { SchemaService } from '@core/service/schema.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  name: FormControl;
  description: FormControl;
}

@Component({
  selector: 'moc-schema',
  templateUrl: 'schema.component.html',
  styleUrls: ['schema.component.scss']
})
export class SchemaComponent extends AbstractComponent implements OnInit {
  schema: SchemaModel;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private schemaService: SchemaService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required]),
      description: this.formBuilder.control(undefined, [Validators.required])
    });
  }

  ngOnInit(): void {
    const id = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.schemaService.getEntity(id).subscribe((schema: SchemaModel): void => {
        this.schema = schema;
        this.formGroup.patchValue(schema);
      });
    }
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    this.schema = {
      ...this.schema,
      ...this.formGroup.getRawValue()
    };
    this.schemaService.upsertEntity(this.schema).subscribe((schema: SchemaModel): void => {
      this.schemaService.getEntity(schema.id).subscribe((schema: SchemaModel): void => {
        this.schema = schema;
        this.formGroup.patchValue(schema);
      });
      this.toastrProvider.showSuccess({
        body: 'message.schema_save_success'
      });
    });
  }

  delete(): void {
    this.modalProvider.showConfirmation({
      body: 'message.schema_delete_confirm'
    }).subscribe((result: boolean): void => {
      if (result) {
        this.schemaService.deleteEntity(this.schema.id).subscribe((schema: SchemaModel): void => {
          if (schema) {
            const detail: string = this.translateService.instant('message.schema_delete_success', { name: this.schema.name });
            this.toastrProvider.showSuccess({
              detail
            });
            this.router.navigate(['/schema']).then();
          }
        });
      }
    });
  }

}
