import {Routes, RouterModule} from '@angular/router';

import {MainComponent} from './main/main.component';
import {LoginComponent} from './login/login.component';
import {HomeModuleRoutes} from "./home/home-module.routes";
import {ProfileModuleRoutes} from "./profile/profile-module.routes";
import {IdentityModuleRoutes} from "./identity/identity-module.routes";
import {GraduationModuleRoutes} from "./graduation/graduation-module.routes";
import {TermModuleRoutes} from "./term/term-module.routes";
import {PlannerModuleRoutes} from "./planner/planner-module.routes";
import {SetupModuleRoutes} from "./setup/setup-module.routes";

const routes: Routes = [
  {path: 'login', component: LoginComponent},
  {
    path: '', component: MainComponent,
    children: [
      ...HomeModuleRoutes,
      ...ProfileModuleRoutes,
      ...PlannerModuleRoutes,
      ...IdentityModuleRoutes,
      ...TermModuleRoutes,
      ...GraduationModuleRoutes,
      ...SetupModuleRoutes,
      
    ]
  },
];

export const appRoutingProviders: any[] = [];

export const appRoutes: any = RouterModule.forRoot(routes, {useHash: false});
