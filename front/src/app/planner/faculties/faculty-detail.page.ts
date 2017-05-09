import {Component, OnInit, ChangeDetectionStrategy} from '@angular/core';
import {Router, ActivatedRoute} from '@angular/router';

import {IdentityService} from '../../../services';
import {CommonService} from '../../../services';
import {Store} from "@ngrx/store";
import {Observable} from "rxjs";
import {Faculty} from "./faculty.interface";
import {FacultyActions} from "./faculty.action";
import {PlannerModuleState} from "../index";

@Component({
  selector: 'pams-faculty-detail',
  templateUrl: './faculty-detail.page.html',
})

export class FacultyDetailPage implements OnInit {


  private FACULTY = "plannerModuleState.faculty".split(".");
  private faculty$: Observable<Faculty>;

  constructor(private router: Router,
              private route: ActivatedRoute,
              private actions: FacultyActions,
              private store: Store<PlannerModuleState>) {

    this.faculty$ = this.store.select(...this.FACULTY);
    console.log("test log ");

    // (program$ | async).code
    this.faculty$.subscribe(faculty => console.log("faculty: " + faculty.code))
  }

  ngOnInit(): void {
    this.route.params.subscribe((params: {code: string}) => {
      let code: string = params.code;
      console.log("Code in pdp: " + code);
      this.store.dispatch(this.actions.findFaculty(code));
    });
  }

  goBack(route: string): void {
    this.router.navigate(['/faculties']);
  }
}
