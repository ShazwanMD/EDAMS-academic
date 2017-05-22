import '@ngrx/core/add/operator/select';
import {appRoutes, appRoutingProviders} from '../../app.routes';
import {NgModule, ModuleWithProviders} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {ReactiveFormsModule} from '@angular/forms';
import {CovalentCoreModule} from '@covalent/core';

import {TermService} from '../../../services';
import {CommonService} from '../../../services';
import {IdentityService} from '../../../services';

import {AppointmentListComponent} from "./component/appointment-list.component";
import {AppointmentActions} from "./appointment.action";
import {EffectsModule} from "@ngrx/effects";
import {AppointmentEffects} from "./appointment.effect";
import {AppointmentDetailPage} from "./appointment-detail.page";
import {AppointmentComponent} from "./component/appointment.component";
import {AppointmentStatusSelectComponent} from "./component/appointment-status-select.component";
import {AppointmentEditorDialog} from "./dialog/appointment-editor.dialog";
import {AppointmentCreateTaskCreatorDialog} from "./dialog/appointment-create-task-creator.dialog";
import {AppointmentUpdateTaskCreatorDialog} from "./dialog/appointment-update-task-creator.dialog";


@NgModule({
  imports: [
    appRoutes,
    BrowserModule,
    ReactiveFormsModule,
    CovalentCoreModule.forRoot(),
    EffectsModule.run(AppointmentEffects),
  ],
  declarations: [
    // page
    AppointmentDetailPage,

    // component
    AppointmentListComponent,
    AppointmentComponent,
    AppointmentStatusSelectComponent,

  //dialog
    AppointmentEditorDialog,
    AppointmentCreateTaskCreatorDialog,
    AppointmentUpdateTaskCreatorDialog,

  ],
  exports: [
  AppointmentCreateTaskCreatorDialog],
  
   entryComponents: [
    AppointmentCreateTaskCreatorDialog,
  ],
})

export class AppointmentSubModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: AppointmentSubModule,
      providers: [
        appRoutingProviders,
        TermService,
        IdentityService,
        CommonService,
        AppointmentActions,
      ],
    };
  }
}


