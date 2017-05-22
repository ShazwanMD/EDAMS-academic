import {Component, Input, EventEmitter, Output, ChangeDetectionStrategy, ViewContainerRef} from '@angular/core';
import { Section } from '../../sections/section.interface';
import {Appointment} from "../../appointments/appointment.interface";
import {Offering} from "../offering.interface";
import {Store} from "@ngrx/store";
import {ActivatedRoute, Router} from "@angular/router";
import {MdDialog, MdDialogConfig, MdDialogRef} from "@angular/material";
import {TermModuleState} from "../../index";
import {AppointmentCreateTaskCreatorDialog} from "../../appointments/dialog/appointment-create-task-creator.dialog";

@Component({
  selector: 'pams-offering-appointment-list',
  templateUrl: './offering-appointment-list.component.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
  
})
export class OfferingAppointmentListComponent {

  private creatorDialogRef: MdDialogRef<AppointmentCreateTaskCreatorDialog>;  
    
  @Input() offering: Offering;
  @Input() appointments: Appointment[];
  @Output() view = new EventEmitter<Appointment>();

   constructor(private router: Router,
              private route: ActivatedRoute,
              //private actions: SectionActions,
              private store: Store<TermModuleState>,
              private vcf: ViewContainerRef,
              private dialog: MdDialog) {
  }  
    
    
      private columns: any[] = [
    { name: 'id', label: 'Id' },
    { name: 'action', label: '' }
  ];

    showDialog(): void {
    console.log("showDialog");
    let config = new MdDialogConfig();
    config.viewContainerRef = this.vcf;
    config.role = 'dialog';
    config.width = '50%';
    config.height = '50%';
    config.position = {top: '0px'};
    this.creatorDialogRef = this.dialog.open(AppointmentCreateTaskCreatorDialog, config);
    this.creatorDialogRef.componentInstance.offering = this.offering;
    this.creatorDialogRef.afterClosed().subscribe(res => {
      console.log("close dialog");
      // load something here
    });
  }
    
    
}

