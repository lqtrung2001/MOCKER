import { Component, OnInit } from '@angular/core';
import { Schema } from '@core/model/Schema.modal';
import { SchemaService } from '@core/service/schema.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-schema',
  templateUrl: './schema.component.html',
  styleUrls: ['./schema.component.scss']
})
export class SchemaComponent implements OnInit {

  projectId: string = '';
  schemas: Schema[] = [];

  constructor(
    schemaService: SchemaService,
    private route: ActivatedRoute
  ) {
    schemaService.getSchemaByProjectId(this.projectId).subscribe((schemas: Schema[]) => {
      this.schemas = schemas;
    });
  }

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      this.projectId = params['projectId'];
    });
  }
}
