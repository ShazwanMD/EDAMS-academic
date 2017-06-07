import { StudyMode } from './../../common/study-modes/study-mode.interface';
import {Guardian} from './../guardian.interface';
import {Component, ViewContainerRef, OnInit, AfterViewInit} from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';
import {FormBuilder} from '@angular/forms';
import {Router, ActivatedRoute} from '@angular/router';
import {Store} from "@ngrx/store";
import {MdDialogRef} from "@angular/material";
import {Student} from "../../identity/student.interface";
import {ProfileModuleState} from "../index";
import {ProfileActions} from "../profile.action";
import {GuardianType} from "../guardian-type.enum";
import {Cohort} from "../../planner/cohorts/cohort.interface";
import {AcademicSession} from "../../planner/academic-sessions/academic-session.interface";
import {TransferCohort} from "../transfer-cohort.interface";

@Component({
  selector: 'pams-cohort-transferer',
  templateUrl: './cohort-transferer.dialog.html',
})

export class CohortTransfererDialog implements OnInit {

  private transferForm: FormGroup;
  private _student: Student;
  private _cohort: Cohort;
    private edit: boolean = false;

  constructor(private router: Router,
              private route: ActivatedRoute,
              private formBuilder: FormBuilder,
              private viewContainerRef: ViewContainerRef,
              private dialog: MdDialogRef<CohortTransfererDialog>,
              private store: Store<ProfileModuleState>,
              private actions: ProfileActions) {
  }

  set student(value: Student) {
    this._student = value;
        this.edit = true;
  }

  set cohort(value: Cohort) {
    this._cohort = value;
  }

  ngOnInit(): void {
    this.transferForm = this.formBuilder.group(<Student>{
      id: null,
      identityNo:'',
      name: '',
      email: '',
      phone:'',
      mobile:'',
      fax:'',
      cohort:<Cohort>{},
      studyMode: <StudyMode>{},
  
    });
    console.log("patching values : " + JSON.stringify(this._student.cohort));
    this.transferForm.patchValue({from: this._student.cohort});
    this.transferForm.patchValue({to: this._student.cohort});
    if (this.edit) this.transferForm.patchValue(this._student);
  }

  transfer(student: Student, isValid: boolean) {
    console.log(student);
    console.log("Cohort:{}" + student.cohort);
    this.store.dispatch(this.actions.updateStudent(student));
    this.dialog.close();
  }
}
