import { RouterModule, Routes } from '@angular/router';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import {
  AUTH,
  DATA_SET,
  GENERAL,
  GROUP,
  MOCK_API,
  NOTIFICATION,
  PERSON,
  PROFILE,
  PROJECT,
  SCHEMA,
  SETTING,
  TABLE
} from '@app/app.constant';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { ProjectsComponent } from '@app/component/project/component/projects/projects.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { ProjectComponent } from '@app/component/project/component/project/project.component';
import { AuthGuard } from '@app/auth.guard';
import { LoginComponent } from '@app/component/auth/component/login/login.component';
import { TablesComponent } from '@app/component/table/component/tables/tables.component';
import { TablePropertiesComponent } from '@app/component/table/component/table-properties/table-properties.component';

const routes: Routes = [
  { path: '', redirectTo: 'general', pathMatch: 'full' },
  { path: AUTH + '/login', component: LoginComponent },
  { path: NOTIFICATION, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: GENERAL, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: TABLE, component: TablesComponent, canActivate: [AuthGuard] },
  { path: TABLE + '/:id', component: TablePropertiesComponent, canActivate: [AuthGuard] },
  { path: DATA_SET, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: MOCK_API, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: SCHEMA, component: SchemasComponent, canActivate: [AuthGuard] },
  { path: PROJECT, component: ProjectsComponent, pathMatch: 'full', canActivate: [AuthGuard] },
  { path: PROJECT + '/:id', component: ProjectComponent, pathMatch: 'full', canActivate: [AuthGuard] },
  { path: GROUP, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: PERSON, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: PROFILE, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: SETTING, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: '**', component: PageNotFoundComponent }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
