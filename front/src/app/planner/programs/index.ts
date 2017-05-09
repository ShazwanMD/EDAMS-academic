import '@ngrx/core/add/operator/select';
import {appRoutes, appRoutingProviders} from '../../app.routes';
import {NgModule, ModuleWithProviders} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {ReactiveFormsModule} from '@angular/forms';
import {CovalentCoreModule} from '@covalent/core';

import {PlannerService} from '../../../services';
import {CommonService} from '../../../services';
import {IdentityService} from '../../../services';
import {ProgramCenterPage} from "./program-center.page";
import {ProgramListComponent} from "./component/program-list.component";
import {ProgramActions} from "./program.action";
import {ProgramDetailPage} from "./program-detail.page";
import {ProgramComponent} from "./component/program.component";
import {EffectsModule} from "@ngrx/effects";
import {ProgramEffects} from "./program.effect";

@NgModule({
  imports: [
    appRoutes,
    BrowserModule,
    ReactiveFormsModule,
    CovalentCoreModule.forRoot(),
    EffectsModule.run(ProgramEffects),
  ],
  declarations: [

    // page
    ProgramCenterPage,
    ProgramDetailPage,

    // component
    ProgramListComponent,
    ProgramComponent,
  ],
  exports: [],
})
export class ProgramSubModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: ProgramSubModule,
      providers: [
        appRoutingProviders,
        PlannerService,
        IdentityService,
        CommonService,
        ProgramActions,
      ],
    };
  }
}


