import { Component, Injector, TemplateRef, ViewChild } from '@angular/core';
import { ProjectService } from '@app/core/service/project.service';
import { AbstractComponent } from '@core/class/abstract.component';
import { Project } from '@core/model/project';
import { Tab } from '@shared/component/tab/tab.component';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

type Controls = {
  name: FormControl;
}

@Component({
  selector: 'moc-project',
  templateUrl: 'project.component.html',
  styleUrls: ['project.component.scss']
})
export class ProjectComponent extends AbstractComponent {
  @ViewChild('resources') resources: TemplateRef<any>;
  @ViewChild('settings') settings: TemplateRef<any>;
  project: Project;
  isNew: boolean = false;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private projectService: ProjectService,
    private schemaService: SchemaService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required])
    });
    const id = this.activatedRoute.snapshot.paramMap.get('id');
    this.isNew = !id;
    if (id) {
      this.projectService.getProject(id).subscribe((project: Project): void => {
        this.project = project;
        this.formGroup.patchValue(project);
        this.schemaService.getSchemasByProject(id).subscribe((schemas: Schema[]): void => {
          this.project.schemas = schemas;
        });
      });
    }
  }

  get tabs(): Tab[] {
    return [{
      title: 'RESOURCES',
      icon: 'fa-regular fa-list',
      content: this.resources
    }, {
      title: 'SETTINGS',
      icon: 'fa-regular fa-gear',
      content: this.settings
    }];
  }

}
