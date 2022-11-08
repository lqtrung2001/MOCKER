import { Component, OnInit } from '@angular/core';
import { Schema } from '@core/model/Schema.modal';
import { SchemaService } from '@core/service/schema.service';
import { ActivatedRoute } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { CreateSchemaModal } from '@shared/modal/create-schema/create-schema.modal';

@Component({
  selector: 'app-schema',
  templateUrl: './schema.component.html',
  styleUrls: ['./schema.component.scss']
})
export class SchemaComponent implements OnInit {

  projectId: string = '';
  schemas: Schema[] = [];
  table: any;

  constructor(
    schemaService: SchemaService,
    private route: ActivatedRoute,
    private modalService: ModalService
  ) {
    schemaService.getSchemaByProjectId(this.projectId).subscribe((schemas: Schema[]) => {
      this.schemas = schemas;
    });
  }

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      this.projectId = params['projectId'];
    });
    this.schemas.push({
      id: '1',
      name: 'Youtube',
      description: 'Youtube',
      project: {}
    });
    this.schemas.push({
      id: '1',
      name: 'Youtube',
      description: 'Youtube',
      project: {}
    });
    this.schemas.push({
      id: '1',
      name: 'Youtube',
      description: 'Youtube',
      project: {}
    });
    this.schemas.push({
      id: '1',
      name: 'Youtube',
      description: 'Youtube',
      project: {}
    });
  }

  createSchema(): void {
    this.modalService.open(CreateSchemaModal);
  }

  modifySchema(id?: string): void {
    this.table = 'hello';
  }
}
