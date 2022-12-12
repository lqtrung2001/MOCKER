import { Component } from '@angular/core';
import { SchemaService } from '@core/service/schema.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { CreateSchemaModal } from '@shared/modal/create-schema/create-schema.modal';
import { ProjectService } from '@core/service/project.service';
import { Project } from '@core/model/project';
import { Schema } from '@core/model/schema';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

@Component({
  selector: 'app-schemas',
  templateUrl: './schemas.component.html',
  styleUrls: ['./schemas.component.scss']
})
export class SchemasComponent {

  project: Project = new Project();
  schemas: Schema[] = [];
  table: any;

  constructor(
    private schemaService: SchemaService,
    private projectService: ProjectService,
    private route: ActivatedRoute,
    private modalService: ModalService,
    private router: Router,
    private modalProvider: ModalProvider
  ) {
    route.queryParams.subscribe(params => {
      this.project.id = params['projectId'];
      if (!this.project.id) {
        console.log('Project not found');
        modalProvider.showError({
          body: 'Project not found, please choose a project'
        }).subscribe(() => {
          this.router.navigate(['/project']).then(() => {
          });
        });
      }
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

  openDetail(id: string | undefined): void {
    if (!id) {
      console.error('Please provide a unique identifier');
      return;
    }
    this.router.navigate(['/table'], { queryParams: { schemaId: id } })
      .then(() => {
      });
  }
}
