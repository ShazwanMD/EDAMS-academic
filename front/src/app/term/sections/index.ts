/*import '@ngrx/core/add/operator/select';
import {appRoutes, appRoutingProviders} from '../../app.routes';
import {NgModule, ModuleWithProviders} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {ReactiveFormsModule} from '@angular/forms';
import {CovalentCoreModule} from '@covalent/core';

import {TermService} from '../../../services';
import {CommonService} from '../../../services';
import {IdentityService} from '../../../services';

import {EffectsModule} from "@ngrx/effects";
import {SectionSelectComponent} from "./component/section-select.component";
import {SectionEffects} from "./section.effect";
import {SectionActions} from "./section.action";

@NgModule({
  imports: [
    appRoutes,
    BrowserModule,
    ReactiveFormsModule,
    CovalentCoreModule.forRoot(),
    EffectsModule.run(SectionEffects),
  ],
  declarations: [
    // component
    SectionSelectComponent,
  ],
  exports: [
    SectionSelectComponent,
  ],
})

export class SectionSubModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: SectionSubModule,
      providers: [
        appRoutingProviders,
        TermService,
        IdentityService,
        CommonService,
        SectionActions,
      ],
    };
  }
}


*/

import '@ngrx/core/add/operator/select';
import {appRoutes, appRoutingProviders} from '../../app.routes';
import {NgModule, ModuleWithProviders} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {ReactiveFormsModule} from '@angular/forms';
import {CovalentCoreModule} from '@covalent/core';

import {TermService} from '../../../services';
import {CommonService} from '../../../services';
import {IdentityService} from '../../../services';

import {SectionCenterPage} from "./section-center.page";
//import {SectionListComponent} from "./component/section-list.component";
import {SectionActions} from "./section.action";
import {EffectsModule} from "@ngrx/effects";
import {SectionEffects} from "./section.effect";
import {SectionDetailPage} from "./section-detail.page";
import {SectionComponent} from "./component/section.component";
//import {SectionEditorDialog} from "./dialog/section-editor.dialog";

@NgModule({
  imports: [
    appRoutes,
    BrowserModule,
    ReactiveFormsModule,
    CovalentCoreModule.forRoot(),
    EffectsModule.run(SectionEffects),
  ],
  declarations: [
    // page
    SectionCenterPage,
    SectionDetailPage,

    // component
   // SectionListComponent,
    SectionComponent,
    
    //dialog
    //SectionEditorDialog,
    
  ],
  exports: [],
})

export class SectionSubModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: SectionSubModule,
      providers: [
        appRoutingProviders,
        TermService,
        IdentityService,
        CommonService,
        SectionActions,
      ],
    };
  }
}







