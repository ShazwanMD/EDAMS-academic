import {Injectable} from '@angular/core';
import {Effect, Actions} from '@ngrx/effects';
import {CourseActions} from "./course.action";
import {PlannerService} from "../../../services/planner.service";


@Injectable()
export class CourseEffects {
  constructor(private actions$: Actions,
              private courseActions: CourseActions,
              private plannerService: PlannerService,) {
  }

  @Effect() findCourses$ = this.actions$
    .ofType(CourseActions.FIND_COURSES)
    .switchMap(() => this.plannerService.findCourses())
    .map(courses => this.courseActions.findCoursesSuccess(courses));

  @Effect() findCourseByCode$ = this.actions$
    .ofType(CourseActions.FIND_COURSE_BY_CODE)
    .map(action => action.payload)
    .switchMap(code => this.plannerService.findCourseByCode(code))
    .map(course => this.courseActions.findCourseByCodeSuccess(course));

  // @Effect() saveCourse$ = this.actions$
  //   .ofType(CourseActions.SAVE_COURSE)
  //   .map(action => action.payload)
  //   .switchMap(course => this.svc.saveCourse(course))
  //   .map(course => this.courseActions.saveCoursesuccess(course));
  //
  // @Effect() deleteCourse$ = this.actions$
  //   .ofType(CourseActions.DELETE_COURSE)
  //   .map(action => action.payload)
  //   .switchMap(course => this.svc.deleteCourse(course))
  //   .map(course => this.courseActions.deleteCoursesuccess(course));
}
