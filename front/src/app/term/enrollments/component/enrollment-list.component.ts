import {Component, Input, EventEmitter, Output, ChangeDetectionStrategy} from '@angular/core';
import {Enrollment} from "../enrollment.interface";

@Component({
  selector: 'pams-enrollment-list',
  templateUrl: './enrollment-list.component.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class EnrollmentListComponent {

  @Input() enrollments: Enrollment[];
  @Output() view = new EventEmitter<Enrollment>();

  private columns: any[] = [
    {name: 'admission.student.name', label: 'Student Name'},
    {name: 'section.code', label: 'Section'},
    {name: 'section.session.description', label: 'Session'},
    {name: 'section.offering.course.title', label: 'Course Title'},
    {name: 'section.offering.program.code', label: 'Program'},
     {name: 'section.offering.program.faculty.name', label: 'Faculty'},
    {name: 'action', label: ''}
  ];
}
