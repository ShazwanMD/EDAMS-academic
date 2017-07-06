import { GradeCode } from './../../../common/grade-codes/grade-code.interface';
import {Component, ViewContainerRef, OnInit, AfterViewInit} from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';
import {FormBuilder} from '@angular/forms';
import {Router, ActivatedRoute} from '@angular/router';
import {Store} from "@ngrx/store";
import {MdDialogRef} from "@angular/material";
import {SetupModuleState} from "../../index";
import {SetupActions} from "../../setup.action";


@Component({
  selector: 'pams-grade-code-editor',
  templateUrl: './grade-code-editor.dialog.html',
})

export class GradeCodeEditorDialog implements OnInit {

  private editorForm: FormGroup;
  private edit: boolean = false;
  private _gradeCode: GradeCode;

  constructor(private router: Router,
              private route: ActivatedRoute,
              private formBuilder: FormBuilder,
              private viewContainerRef: ViewContainerRef,
              private dialog: MdDialogRef<GradeCodeEditorDialog>,
              private store: Store<SetupModuleState>,
              private actions: SetupActions) {
  }

  set gradeCode(value: GradeCode) {
    this._gradeCode = value;
    this.edit = true;
  }

  ngOnInit(): void {
    this.editorForm = this.formBuilder.group(<GradeCode>{
      id: null,
      code: '',
      description: '',
      ordinal:0,
      point:0
    });

    if (this.edit) this.editorForm.patchValue(this._gradeCode);
  }

  submit(code: GradeCode, isValid: boolean) {
    if (!code.id) this.store.dispatch(this.actions.saveGradeCode(code));
    else  this.store.dispatch(this.actions.updateGradeCode(code));
    this.dialog.close();
  }
}