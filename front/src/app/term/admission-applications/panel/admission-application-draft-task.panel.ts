import {Component, OnInit, ViewContainerRef} from '@angular/core';
import {Router, ActivatedRoute} from '@angular/router';
import {MdSnackBar, MdDialog, MdDialogRef, MdDialogConfig} from "@angular/material";
import {TermService} from "../../../../services/term.service";
import {AdmissionApplicationTask} from "../admission-application-task.interface";


/*@Component({
  selector: 'pams-admission-application-register-task',
  templateUrl: './admission-application-register-task.panel.html',
})*/

@Component({
  selector: 'pams-admission-application-draft-task',
  templateUrl: './admission-application-draft-task.panel.html',
})

export class AdmissionApplicationDraftTaskPanel implements OnInit {

  private _router: Router;
  private _route: ActivatedRoute;
  private _termService: TermService;
  private _snackBar: MdSnackBar;
  private _viewContainerRef: ViewContainerRef;
  private _dialog: MdDialog;

  private admissionApplicationTask: AdmissionApplicationTask = <AdmissionApplicationTask>{}

  constructor(router: Router,
              route: ActivatedRoute,
              viewContainerRef: ViewContainerRef,
              dialog: MdDialog,
              termService: TermService,
              snackBar: MdSnackBar) {
    this._router = router;
    this._route = route;
    this._termService = termService;
    this._snackBar = snackBar;
    this._dialog = dialog;
    this._viewContainerRef = viewContainerRef;
  }

  ngOnInit(): void {
    this._route.params.subscribe((params: {taskId: string}) => {
      let taskId: string = params.taskId;
      // ngrx
    });

  }


  register() {
    // this._termService.completeAdmissionApplicationTask(this.admissionApplicationTask).subscribe(res => {
    //   let snackBarRef = this._snackBar.open("AdmissionApplication  completed", "OK");
    //   snackBarRef.afterDismissed().subscribe(() => {
    //     this.goBack();
    //   });
    // });
  }

  goBack(): void {
    this._router.navigate(['/term/admission-applications/assigned-tasks']);
  }
}