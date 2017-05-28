 import { ProgramLevelSelectComponent } from './component/program-level-select.component';

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
import {ProgramEditorDialog} from "./dialog/program-editor.dialog";
import {ProgramCreatorDialog} from "./dialog/program-creator.dialog";
import {EffectsModule} from "@ngrx/effects";
import {ProgramEffects} from "./program.effect";
import {ProgramSelectComponent} from "./component/program-select.component";
import {FacultySubModule} from "../faculties/index";
import {ProgramActionComponent} from "./component/program-action.component";
import {ProgramStatusComponent} from "./component/program-status.component";
import {ProgramStatusSelectComponent} from "./component/program-status-select.component";

@NgModule({
  imports: [
    appRoutes,
    BrowserModule,
    ReactiveFormsModule,
    CovalentCoreModule.forRoot(),
    FacultySubModule.forRoot(),
    EffectsModule.run(ProgramEffects),
  ],
  declarations: [
    // page
    ProgramCenterPage,
    ProgramDetailPage,

    // component
    ProgramListComponent,
    ProgramComponent,
    ProgramSelectComponent,
    ProgramActionComponent,
    ProgramStatusComponent,
    ProgramStatusSelectComponent,
    ProgramLevelSelectComponent,

    // dialog
    ProgramEditorDialog,
    ProgramCreatorDialog,
  ],

  exports: [
    ProgramSelectComponent,
    ProgramListComponent,
    ProgramComponent,
    ProgramStatusComponent,
    ProgramStatusSelectComponent,
    ProgramLevelSelectComponent,

  ],

  entryComponents: [
    ProgramCreatorDialog,
    ProgramEditorDialog,
  ],

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