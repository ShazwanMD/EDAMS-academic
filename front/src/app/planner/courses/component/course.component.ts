import {MdTabsModule} from '@angular/material';
import {Course} from "../course.interface";
import {CourseStatus} from "../course-status.enum";
import { Faculty } from './../../faculties/faculty.interface';
import { Store } from '@ngrx/store';
import { Router, ActivatedRoute } from '@angular/router';
import { FormBuilder } from '@angular/forms';
import { CourseActions } from './../course.action';
import { PlannerModuleState } from './../../index';
import { Component, Input, EventEmitter, Output, ChangeDetectionStrategy, ViewContainerRef } from '@angular/core';
import { CourseCreatorDialog } from "../dialog/course-creator.dialog";

import {MdDialog, MdDialogConfig, MdDialogRef} from "@angular/material";

@Component({
  selector: 'pams-course',
  templateUrl: 'course.component.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class CourseComponent {

  @Input() course: Course;
  @Input() courseStatus: CourseStatus;
  @Output() view = new EventEmitter<Course>();


  private creatorDialogRef: MdDialogRef<CourseCreatorDialog>;

  constructor(private actions: CourseActions,
              private formBuilder: FormBuilder,
              private router: Router,
              private route: ActivatedRoute,
              private store: Store<PlannerModuleState>,
              private vcf: ViewContainerRef,
              private dialog: MdDialog,){


  }

   saveCourseDialog(course:Course,faculty:Faculty): void {
    console.log("showDialog");
    let config = new MdDialogConfig();
    config.viewContainerRef = this.vcf;
    config.role = 'dialog';
    config.width = '60%';
    config.height = '80%';
    config.position = {top: '0px'};
    this.creatorDialogRef = this.dialog.open(CourseCreatorDialog, config);
    // this.creatorDialogRef.componentInstance.course= this.course;
    this.creatorDialogRef.afterClosed().subscribe(res => {
      console.log("close dialog");
      // load something here
    });
   }

  removeCourse(course:Course): void {
    this.store.dispatch(this.actions.removeCourse(this.course))
    console.log("deleteCourse:{}", course)
  } 
}
