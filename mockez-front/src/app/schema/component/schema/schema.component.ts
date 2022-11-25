import { Component } from '@angular/core';
import { SchemaService } from '@core/service/schema.service';
import { ActivatedRoute } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { CreateSchemaModal } from '@shared/modal/create-schema/create-schema.modal';
import { ProjectService } from '@core/service/project.service';
import { Project } from '@core/model/project';
import { Schema } from '@core/model/schema';

@Component({
  selector: 'app-schema',
  templateUrl: './schema.component.html',
  styleUrls: ['./schema.component.scss']
})
export class SchemaComponent {

  project: Project = new Project();
  schemas: Schema[] = [];
  table: any;

  constructor(
    private schemaService: SchemaService,
    private projectService: ProjectService,
    private route: ActivatedRoute,
    private modalService: ModalService
  ) {
    route.queryParams.subscribe(params => {
      this.project.id = params['projectId'];
      this.projectService.getProject(this.project.id!).subscribe((project: Project) => {
        this.project = project;
        this.schemaService.getSchemaByProject(this.project.id!).subscribe((schema: Schema[]) => {
          this.schemas = schema;
        });
      });
    });
  }

  createSchema(): void {
    this.modalService.open(CreateSchemaModal);
  }

  modifySchema(id?: string): void {
    this.table = 'hello';
  }
}
