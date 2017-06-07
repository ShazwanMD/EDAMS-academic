import { GradebookMatrix } from './gradebook-matrix.interface';
import { Student } from '../../identity/student.interface';
import { Component, OnInit, ChangeDetectionStrategy, ViewContainerRef, Input, EventEmitter, Output } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Store } from "@ngrx/store";
import { Observable } from "rxjs";
import { Offering } from "./offering.interface";
import { OfferingActions } from "./offering.action";
import { TermModuleState } from "../index";
import { Enrollment } from "../enrollments/enrollment.interface";
import { Assessment } from "../assessments/assessment.interface";

@Component({
  selector: 'pams-gradebook-detail',
  templateUrl: './gradebook-detail.page.html',
})

export class GradebookDetailPage implements OnInit {

  num: Number;

  getLoop() {
    this.num = 3;
    let a = [];
    for (let i = 0; i < this.num; i++) {
      var format = "label: 'Assessment ', name: 'gradebooks." + a.push(i) + ".score'";
      console.log("-->", format);
    }
    return format;
  }

  @Input() assessments: Assessment;
  @Input() enrollment: Enrollment;
  @Input() student: Student;
  @Input() gradebookMatrices: GradebookMatrix;
  @Input() offerings: Offering;

  private OFFERING: string[] = "termModuleState.offering".split(".");
  private GRADEBOOK_MATRICES: string[] = "termModuleState.gradebookMatrices".split(".");
  private ASSESSMENTS: string[] = "termModuleState.assessments".split(".");
  private ENROLLMENTS: string[] = "termModuleState.enrollments".split(".");

  private enrollments$: Observable<Enrollment>;
  private assessments$: Observable<Assessment>;
  private offering$: Observable<Offering>;
  private gradebookMatrices$: Observable<GradebookMatrix>;

  constructor(private router: Router,
    private route: ActivatedRoute,
    private actions: OfferingActions,
    private store: Store<TermModuleState>,
    private vcf: ViewContainerRef) {

    this.offering$ = this.store.select(...this.OFFERING);
    this.assessments$ = this.store.select(...this.ASSESSMENTS);
    this.gradebookMatrices$ = this.store.select(...this.GRADEBOOK_MATRICES);
    this.enrollments$ = this.store.select(...this.ENROLLMENTS);
  }

  private columns: any[] =
  [
    { label: 'Student name', name: 'enrollment.admission.student.name' },
    { label: 'FINAL', name: 'gradebooks.0.score' },
    { label: 'QUIZ 1', name: 'gradebooks.1.score' },
    { label: 'QUIZ 2', name: 'gradebooks.2.score' }
  ];

  ngOnInit(): void {
    console.log(this.gradebookMatrices)
    this.route.params.subscribe((params: { canonicalCode: string }) => {
      let canonicalCode: string = params.canonicalCode;
      this.store.dispatch(this.actions.findOfferingByCanonicalCode(canonicalCode));
    });

    this.offering$.subscribe((offering: Offering) => {
      console.log(offering);
      if (offering.canonicalCode) this.store.dispatch(this.actions.findGradebookMatricessByOffering(offering))
    });
  }

  goBack(route: string): void {
    this.router.navigate(['/offerings', + this.offerings.canonicalCode]);
  }
}