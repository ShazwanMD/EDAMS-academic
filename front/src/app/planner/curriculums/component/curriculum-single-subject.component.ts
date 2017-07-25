// import { CurriculumSingleSubjectDialog } from './../dialog/curriculum-single-subject.dialog';

// import { PlannerModuleState } from './../../index';
// import { SubjectActions } from './../../subjects/subject.action';
// import { Subject } from './../subject.interface';
// import {Component, Input, EventEmitter, Output, ChangeDetectionStrategy, OnInit, ViewContainerRef} from '@angular/core';
// import {Store} from '@ngrx/store';
// import {MdDialog, MdDialogConfig, MdDialogRef} from '@angular/material';
// import { SingleSubject } from "../single-subject.interface";

// @Component({
//   selector: 'pams-single-subject',
//   templateUrl: './curriculum-single-subject.component.html',
//   changeDetection: ChangeDetectionStrategy.OnPush,
// })
// export class SingleSubjectComponent implements OnInit{
//   private editorDialogRef: MdDialogRef<CurriculumSingleSubjectDialog >;
//   private singleSubjectColumns: any[] = [
//     {name: 'course', label: 'course'},
//     {name: 'ordinal', label: 'Ordinal'},
//     {name: 'action', label: ''},
//   ];
//   @Input() singleSubject: SingleSubject[];
//   @Input() subject: Subject;
//   private selectedRows: SingleSubject[];
//   constructor(private actions: SubjectActions,
//               private vcf: ViewContainerRef,
//               private store: Store<PlannerModuleState>,
//               private dialog: MdDialog) {
//   }
//     ngOnInit(): void {
//     this.selectedRows = this.singleSubject.filter((value) => value.selected);
//   }
//   delete(): void {
//       console.log('length: ' + this.selectedRows.length);
//       for (let i: number = 0; i < this.selectedRows.length; i++) {
//     //   this.store.dispatch(this.actions.deleteSubject(this.subject, this.selectedRows[i]));
//     }
//     this.selectedRows = [];
//   }
//     edit(singleSubject: SingleSubject): void {
//     this.showDialog(singleSubject);
//   }

//  selectRow(singleSubject: SingleSubject): void {
//   }
//   selectAllRows(singleSubject: SingleSubject[]): void {
//   }
// showDialog(singleSubject: SingleSubject): void {
//     console.log('showDialog');
//     let config = new MdDialogConfig();
//     config.viewContainerRef = this.vcf;
//     config.role = 'dialog';
//     config.width = '50%';
//     config.height = '60%';
//     config.position = {top: '65px'};
//     this.editorDialogRef = this.dialog.open(CurriculumSingleSubjectDialog, config);
//     this.editorDialogRef.componentInstance.subject = this.subject;
//     if (singleSubject) this.editorDialogRef.componentInstance.subject= singleSubject;
//     this.editorDialogRef.afterClosed().subscribe((res) => {
//       console.log('close dialog');
//     });
//   }
// }