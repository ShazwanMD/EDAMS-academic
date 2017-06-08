import {Injectable} from '@angular/core';
import {Effect, Actions} from '@ngrx/effects';
import {EnrollmentActions} from "./enrollment.action";
import {TermService} from "../../../services/term.service";
import {Store} from "@ngrx/store";
import { SectionActions } from "../sections/section.action";
import {Section} from "../sections/section.interface";
import {TermModuleState} from "../index";


@Injectable()
export class EnrollmentEffects {

    private SECTION: string[] = "termModuleState.section".split(".");

    constructor(private actions$: Actions,
        private enrollmentActions: EnrollmentActions,
        private sectionActions: SectionActions,
        private termService: TermService,
        private store$: Store<TermModuleState>) {
    }

    @Effect() findEnrollmentById$ = this.actions$
        .ofType(EnrollmentActions.FIND_ENROLLMENT_BY_ID)
        .map(action => action.payload)
        .switchMap(id => this.termService.findEnrollmentById(id))
        .map(enrollment => this.enrollmentActions.findEnrollmentByIdSuccess(enrollment));

    //update enrollment by section
    @Effect() updateEnrollment$ = this.actions$
        .ofType(EnrollmentActions.UPDATE_ENROLLMENT)
        .map(action => action.payload)
        .switchMap(payload => this.termService.updateEnrollment(payload.section, payload.enrollment))
        .map(message => this.enrollmentActions.updateEnrollmentSuccess(message))
        .withLatestFrom(this.store$.select(...this.SECTION))
        .map(state => state[1])
        //.mergeMap(action => from([action, this.appointmentActions.findAppointments()]));
        .map((section: Section) => this.sectionActions.findSectionByCanonicalCode(section.canonicalCode));


}
