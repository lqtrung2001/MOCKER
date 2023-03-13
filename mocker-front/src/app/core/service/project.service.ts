import { Injectable } from '@angular/core';
import { ProjectModel } from '@core/domain/model/project.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService extends AbstractService<ProjectModel> {
  override ENTITY_URL = 'project';

}
