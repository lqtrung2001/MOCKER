import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { SchemaService } from '@core/service/schema.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ProjectService } from '@core/service/project.service';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import {
  CreateEntityModal,
  CreateEntityModalCloseOptions,
  CreateEntityModalOptions
} from '@shared/modal/create-entity/create-entity.modal';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { PermissionUtil } from '@core/util/permission.util';
import { PermissionService } from '@core/service/permission.service';

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
    private schemaService: SchemaService,
    private projectService: ProjectService,
    private permissionService: PermissionService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required]),
      description: this.formBuilder.control(undefined, [Validators.required])
    });
  }

  ngOnInit(): void {
    const id: string | null = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.schemaService.getEntity(id).subscribe((schema: SchemaModel): void => {
        this.schema = schema;
        this.formGroup.patchValue(schema);
        this.permissionService.getPermission('schema', id)
          .subscribe((role: RoleEnum): void => {
            this.toastrProvider.showInformation({
              detail: PermissionUtil.getLabelFollowingRole(role)
            });
          });
      });
    } else {
      this.activatedRoute.queryParams.subscribe((params: any): void => {
        if (!params.projectId) {
          return;
        }
        this.projectService.getEntity(params.projectId).subscribe((project: ProjectModel): void => {
          if (!project.id) {
            return;
          }
          setTimeout((): void => {
            const options: CreateEntityModalOptions = {
              type: 'schema',
              description: this.translateService.instant('component.schemas.information')
            };
            this.modalService.open(CreateEntityModal, options).subscribe((closeOptions: CreateEntityModalCloseOptions): void => {
              if (!closeOptions) {
                return;
              }
              this.schema = new SchemaModel();
              this.schema.project = project;
              this.schema.name = closeOptions.name;
              this.schema.description = closeOptions.description;
              this.formGroup.patchValue(this.schema);
              this.submit();
            });
          });
        });
      });
    }
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const body: SchemaModel = {
      ...this.schema,
      ...this.formGroup.getRawValue()
    };
    this.schemaService.upsertEntity(body)
      .subscribe((schema: SchemaModel): void => {
        this.schema = schema;
        this.formGroup.patchValue(schema);
        if (this.router.url.includes('new')) {
          this.location.replaceState(`/schema/${schema.id}`);
        }
        this.toastrProvider.showSuccess({
          body: 'message.schema_save_success'
        });
      });
  }

  delete(): void {
    if (!this.schema.id || this.schema.id === 'new') {
      this.modalProvider.showError({
        body: 'The schema is not available for deleting at this moment, please try again!'
      });
      return;
    }
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
