import { Component } from '@angular/core';
import { SchemaService } from '@core/service/schema.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { ProjectService } from '@core/service/project.service';
import { Project } from '@core/model/project';
import { Schema } from '@core/model/schema';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { FormBuilder, FormControl } from '@angular/forms';
import { SaveSchemaModal } from '@app/component/schema/modal/save-schema/save-schema-modal';
import { DeleteSchemaModal } from '@app/component/schema/modal/delete-schema-modal/delete-schema.modal';
import { AppConfigService } from '@core/service/app-config.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-schemas',
  templateUrl: 'schemas.component.html',
  styleUrls: ['schemas.component.scss']
})
export class SchemasComponent {

  storage: Schema[] = [];
  project: Project = new Project();
  schemas: Schema[] = [];
  table: any;
  date: Date = new Date();
  isOpenDetail: boolean = false;
  filter: FormControl;
  schemaDetail: Schema;

  constructor(
    private schemaService: SchemaService,
    private projectService: ProjectService,
    private activatedRoute: ActivatedRoute,
    private modalService: ModalService,
    private router: Router,
    private modalProvider: ModalProvider,
    private formBuilder: FormBuilder,
    private appConfigProviderService: AppConfigService
  ) {
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value) => {
      this.isOpenDetail = false;
      this.schemas = this.storage.filter((schema: Schema) => schema.name?.toUpperCase().includes(value.toUpperCase()));
    });
    this.project.id = activatedRoute.snapshot.queryParams['projectId'];
    if (!this.project.id) {
      this.router.navigate(['/project']).then(() => {
        modalProvider.showError({
          body: 'Project not found, please choose a project'
        });
      });
    } else {
      this.load();
    }
  }

  load(): void {
    this.projectService.getProject(this.project.id!).subscribe((project: Project) => {
      this.project = project;
      this.schemaService.getSchemasByProject(this.project.id!).subscribe((schemas: Schema[]) => {
        this.storage = schemas;
        this.schemas = schemas;
      });
    });
  }

  openDetail(id: string): void {
    this.isOpenDetail = true;
    this.schemaDetail = this.schemas.find((schema: Schema) => schema.id === id)!;
  }

  modifySchema(): void {
    this.modalService.open(SaveSchemaModal, this.schemaDetail)
      .onResult().subscribe((id: string) => {
      if (id) {
        this.load();
      }
    });
  }

  deleteSchema(): void {
    this.modalService.open(DeleteSchemaModal, {
      name: this.schemaDetail.name
    }).onResult().subscribe((close: boolean) => {
      if (close) {
        this.schemaService.deleteSchema(this.schemaDetail.id!).subscribe(() => {
          this.isOpenDetail = false;
          this.load();
        });
      }
    });
  }

  openTable(): void {
    this.router.navigate(['/table'], { queryParams: { schemaId: this.schemaDetail.id } }).then(() => {
    });
  }

  create(): void {
    this.modalService.open(SaveSchemaModal, {
      project: this.project
    }).onResult().subscribe((id: string) => {
      if (id) {
        this.load();
      }
    });
  }
}
