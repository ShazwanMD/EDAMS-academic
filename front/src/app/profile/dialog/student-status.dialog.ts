import { Cohort } from './../../planner/cohorts/cohort.interface';
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
import {AcademicSession} from "../../planner/academic-sessions/academic-session.interface";
import {StudyMode} from "../../common/study-modes/study-mode.interface";
import {SwitchStudyMode} from "../switch-study-mode.interface";
import { StudentStatus } from "../student-status.enum";

@Component({
  selector: 'pams-student-status',
  templateUrl: './student-status.dialog.html',
})

export class StudentStatusDialog implements OnInit {

  private switchForm: FormGroup;
  private _student: Student;
    private edit: boolean = false;

  constructor(private router: Router,
              private route: ActivatedRoute,
              private formBuilder: FormBuilder,
              private viewContainerRef: ViewContainerRef,
              private dialog: MdDialogRef<StudentStatusDialog>,
              private store: Store<ProfileModuleState>,
              private actions: ProfileActions) {
  }

  set student(value: Student) {
    this._student = value;
        this.edit = true;
  }

  ngOnInit(): void {
    this.switchForm = this.formBuilder.group(<Student>{
      id: null,
      identityNo:'',
      name: '',
      email: '',
      phone:'',
      mobile:'',
      fax:'',
      studentStatusDescription:'',
      studyMode: <StudyMode>{},
      cohort: <Cohort>{},
      studentStatus:<StudentStatus>{},
    });

    console.log("patching values : " + JSON.stringify(this._student.studentStatus));
    this.switchForm.patchValue({"from": this._student.studentStatus});
    if (this.edit) this.switchForm.patchValue(this._student);

  }


  
  switch(student: Student, isValid: boolean) {
    console.log(student);
    console.log("StudyMode:{}" + student.studentStatus);
    this.store.dispatch(this.actions.updateStudent(student));
    this.dialog.close();
  }
}