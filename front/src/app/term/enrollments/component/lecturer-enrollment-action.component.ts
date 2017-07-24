import {Component, Input, EventEmitter, Output, ChangeDetectionStrategy} from '@angular/core';
import {Enrollment} from "../enrollment.interface";

@Component({
  selector: 'pams-lecturer-enrollment-action',
  templateUrl: './lecturer-enrollment-action.component.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class LecturerEnrollmentActionComponent {

  @Input() enrollment: Enrollment;
  @Output() view = new EventEmitter<Enrollment>();
}
