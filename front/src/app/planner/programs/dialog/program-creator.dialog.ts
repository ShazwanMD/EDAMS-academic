import {Faculty} from '../../faculties/faculty.interface';
import {Program} from './../program.interface';
import {Component, ViewContainerRef, OnInit} from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';
import {FormBuilder} from '@angular/forms';
import {Router, ActivatedRoute} from '@angular/router';
import {ProgramActions} from "../program.action";
import {Store} from "@ngrx/store";
import {PlannerModuleState} from "../../index";
import {MdDialogRef} from "@angular/material";
import {ProgramStatus} from "../program-status.enum";
import {ProgramLevel} from "../../program-levels/program-level.interface";
import { facultyListReducer } from '../../faculties/faculty-list.reducer';

@Component({
  selector: 'pams-program-creator',
  templateUrl: './program-creator.dialog.html',
})

export class ProgramCreatorDialog implements OnInit {

  private creatorForm: FormGroup;
  private create: boolean = false;
  private _program: Program;
  private faculty: Faculty;

  constructor(private formBuilder: FormBuilder,
              private store: Store<PlannerModuleState>,
              private actions: ProgramActions,
              private router: Router,
              private route: ActivatedRoute,
              private viewContainerRef: ViewContainerRef,
              private dialog: MdDialogRef<ProgramCreatorDialog>) {
  }

  set program(value: Program) {
        this._program = value;
        this.create = true;
    }

  ngOnInit(): void {
    this.creatorForm = this.formBuilder.group(<Program>{
      id: null,
      code: '',
      titleMs: '',
      titleEn: '',
      status: ProgramStatus.INACTIVATED,
      faculty: <Faculty>{},
      level: <ProgramLevel>{},
    });

    if (this.create) this.creatorForm.patchValue(this._program);
  }

  submit(program: Program, isValid: boolean) {
       console.log("adding program");
        if (!program.id) this.store.dispatch(this.actions.saveProgram(program));
        else this.store.dispatch(this.actions.updateProgram(program));
        this.dialog.close();
        console.log(program);
  }
}