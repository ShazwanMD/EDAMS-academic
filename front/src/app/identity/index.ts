import {NgModule, ModuleWithProviders} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {ReactiveFormsModule} from '@angular/forms';
import {appRoutes, appRoutingProviders} from '../app.routes';
import {CovalentCoreModule} from '@covalent/core';
import {CommonService} from '../../services';
import {IdentityService} from '../../services';
import {IdentityComponent} from "./identity.component";
import {studentListReducer, StudentListState} from "./student-list.reducer";
import {actorListReducer, ActorListState} from "./actor-list.reducer";
import {staffListReducer, StaffListState} from "./staff-list.reducer";
import {StudentSelectComponent} from "./component/student-select.component";
import {StaffSelectComponent} from "./component/staff-select.component";
import {StudentActions} from "./student.action";
import {StaffActions} from "./staff.action";
import {ActorActions} from "./actor.action";
import {ActorEffects} from "./actor.effect";
import {EffectsModule} from "@ngrx/effects";

export interface IdentityModuleState {
  actors: ActorListState;
  students: StudentListState;
  staffs: StaffListState;
}
;

export const INITIAL_IDENTITY_STATE: IdentityModuleState = <IdentityModuleState>{
  actors:[],
  students:[],
  staffs:[],
};

export const identityModuleReducers = {
  actors: actorListReducer,
  students: studentListReducer,
  staffs: staffListReducer,
};


@NgModule({
  imports: [
    appRoutes,
    BrowserModule,
    ReactiveFormsModule,
    CovalentCoreModule.forRoot(),
    EffectsModule.run(ActorEffects),
  ],
  declarations: [
    IdentityComponent,
    StudentSelectComponent,
    StaffSelectComponent
  ],
  exports: [
    StudentSelectComponent,
    StaffSelectComponent
  ],
})
export class IdentityModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: IdentityModule,
      providers: [
        appRoutingProviders,
        IdentityService,
        CommonService,
        ActorActions,
        StudentActions,
        StaffActions,
      ],
    };
  }
}
