import { RouterModule, Routes } from '@angular/router';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import { AUTH, GENERAL, GROUP, PERSON, PROFILE, PROJECT, SCHEMA, TABLE } from '@app/app.constant';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { ProjectsComponent } from '@app/component/project/component/projects/projects.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { ProjectComponent } from '@app/component/project/component/project/project.component';
import { AuthGuard } from '@app/auth.guard';
import { LoginComponent } from '@app/component/auth/component/login/login.component';
import { TablesComponent } from '@app/component/table/component/tables/tables.component';
import { TableComponent } from '@app/component/table/component/table/table.component';
import { ProfileComponent } from '@app/component/profile/component/profile/profile.component';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { PersonsComponent } from '@app/component/person/component/persons/persons.component';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { PersonComponent } from '@app/component/person/component/person/person.component';
import { SignupComponent } from '@app/component/auth/component/signup/signup.component';
import { ForgotPasswordComponent } from '@app/component/auth/component/forgot-password/forgot-password.component';

const routes: Routes = [
  { path: '', redirectTo: 'general', pathMatch: 'full' },
  { path: AUTH + '/login', component: LoginComponent },
  { path: AUTH + '/signup', component: SignupComponent },
  { path: AUTH + '/forgot-password', component: ForgotPasswordComponent },
  // { path: NOTIFICATION, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: GENERAL, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: TABLE, component: TablesComponent, canActivate: [AuthGuard] },
  { path: TABLE + '/:id', component: TableComponent, canActivate: [AuthGuard] },
  // { path: DATA_SET, component: GeneralComponent, canActivate: [AuthGuard] },
  // { path: MOCK_API, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: SCHEMA, component: SchemasComponent, canActivate: [AuthGuard] },
  { path: PROJECT, component: ProjectsComponent, pathMatch: 'full', canActivate: [AuthGuard] },
  { path: PROJECT + '/:id', component: ProjectComponent, pathMatch: 'full', canActivate: [AuthGuard] },
  { path: GROUP, component: GroupsComponent, canActivate: [AuthGuard] },
  { path: GROUP + '/:id', component: GroupComponent, canActivate: [AuthGuard] },
  { path: PERSON, component: PersonsComponent, canActivate: [AuthGuard] },
  { path: PERSON + '/:id', component: PersonComponent, canActivate: [AuthGuard] },
  { path: PROFILE, component: ProfileComponent, canActivate: [AuthGuard] },
  // { path: SETTING, component: GeneralComponent, canActivate: [AuthGuard] },
  { path: '**', component: PageNotFoundComponent }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
