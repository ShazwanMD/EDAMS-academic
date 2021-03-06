import {ChangeDetectionStrategy, Component, EventEmitter, Input, Output} from '@angular/core';
import {MdSnackBar} from '@angular/material';
import {EnrollmentApplicationTask} from '../../../../shared/model/term/enrollment-application-task.interface';

@Component({
  selector: 'pams-pooled-enrollment-application-task-list',
  templateUrl: './pooled-enrollment-application-task-list.component.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class PooledEnrollmentApplicationTaskListComponent {

  private columns: any[] = [
    {name: 'referenceNo', label: 'ReferenceNo'},
    {name: 'student.identityNo', label: 'Student'},
    {name: 'cgpa', label: 'CGPA'},
    {name: 'creditHour', label: 'Credit Hour'},
    {name: 'flowState', label: 'Status'},
    {name: 'action', label: ''},
  ];

  @Input() enrollmentApplicationTasks: EnrollmentApplicationTask[];
  @Output() claim = new EventEmitter<EnrollmentApplicationTask>();

  constructor(private snackBar: MdSnackBar) {
  }

  claimTask(task: EnrollmentApplicationTask): void {
    console.log('Emitting task');
    let snackBarRef = this.snackBar.open('Claiming enrollmentApplication', 'OK' , {duration:2000});
    snackBarRef.afterDismissed().subscribe(() => {
      this.claim.emit(task);
    });
  }
}
