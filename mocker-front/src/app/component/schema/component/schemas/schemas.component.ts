import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, OnInit } from '@angular/core';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { SchemaService } from '@core/service/schema.service';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { ChooseParentModal, ChooseParentModalOptions } from '@shared/modal/choose-parent/choose-parent.modal';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { RoleUtil } from '@core/util/role.util';

/**
 * @author Do Quoc viet
 */

@Component({
  selector: 'moc-schemas',
  templateUrl: 'schemas.component.html',
  styleUrls: ['schemas.component.scss']
})
export class SchemasComponent extends AbstractComponent implements OnInit {
  grid: Grid;
  currentRole: RoleEnum | undefined;

  constructor(
    injector: Injector,
    private schemaService: SchemaService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    const roles: RoleEnum[] | undefined = this.activatedRoute.snapshot.queryParamMap.get('roles')
      ?.toString()
      .split(',')
      .filter((role: string): boolean => !!role)
      .map((role: string): RoleEnum => RoleUtil.valueOf(role));
    if (roles?.length === 1) {
      this.currentRole = roles.at(0)!;
    } else {
      this.currentRole = undefined;
    }
    this.initialEntities(roles);
  }

  get createAction(): CreateAction {
    return {
      click: (): void => {
        const options: ChooseParentModalOptions = {
          type: 'project'
        };
        setTimeout(() => this.modalService.open(ChooseParentModal, options)
          .subscribe((projectId: string): void => {
            if (projectId) {
              this.router.navigate(['/schema/new'], { queryParams: { projectId } })
                .then((): void => {
                });
            }
          }));
      },
      content: 'component.schemas.create'
    };
  }

  private initialEntities(roles: RoleEnum[] = []): void {
    this.schemaService.getSchemas(roles)
      .subscribe((schemas: SchemaModel[]): void => {
        this.grid = {
          columns: [
            {
              label: this.translateService.instant('component.schemas.name'),
              key: 'name',
              isSearched: true
            },
            {
              label: this.translateService.instant('component.schemas.description'),
              key: 'description'
            },
            {
              label: this.translateService.instant('component.schemas.shared_by'),
              key: 'sharedBy',
              isSearched: true
            },
            {
              label: this.translateService.instant('component.schemas.group'),
              key: 'group',
              isSearched: true
            },
            {
              label: this.translateService.instant('component.schemas.last_modified'),
              key: 'lastModified'
            }
          ],
          values: schemas.map((schema: SchemaModel): GridValue => ({
            name: {
              value: schema.name,
              click: () => this.router.navigate([`/schema/${schema.id}`]),
              html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`
            },
            description: this.truncatePipe.transform(schema.description, 50),
            sharedBy: {
              value: schema.project.name,
              click: () => this.router.navigate([`/project/${schema.project.id}`]),
              html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`
            },
            group: {
              value: schema.project.group.name,
              click: () => this.router.navigate([`/group/${schema.project.group.id}`]),
              html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`
            },
            lastModified: this.datePipe.transform(schema.modifiedDate) || StringUtil.EMPTY
          }))
        };
      });
  }

  roleChange(role: RoleEnum | undefined): void {
    if (role !== this.currentRole) {
      this.initialEntities(role ? [role] : undefined);
      this.currentRole = role;
    }
  }
}
