import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ActivatedRoute, Router} from '@angular/router';
import {Curriculum} from '../../../../shared/model/planner/curriculum.interface';
import {Subject} from '../../../../shared/model/planner/subject.interface';
import {CurriculumActions} from '../curriculum.action';
import {Store} from '@ngrx/store';
import {PlannerModuleState} from '../../index';
import {MdDialogRef} from '@angular/material';

@Component({
  selector: 'pams-curriculum-editor',
  templateUrl: './curriculum-editor.dialog.html',
})

export class CurriculumEditorDialog implements OnInit {

  private editorForm: FormGroup;
  private edit: boolean = false;
  private _curriculum: Curriculum;
  private _subject: Subject;

  constructor(private router: Router,
              private route: ActivatedRoute,
              private formBuilder: FormBuilder,
              private store: Store<PlannerModuleState>,
              private actions: CurriculumActions,
              private dialog: MdDialogRef<CurriculumEditorDialog>) {
  }

  set curriculum(value: Curriculum) {
    this._curriculum = value;
    this.edit = true;
  }

  set subject(value: Subject) {
    this._subject = value;
    this.edit = true;
  }

  ngOnInit(): void {
    this.editorForm = this.formBuilder.group({
      id: [undefined],
      code: ['', Validators.required],
      description: '',
      coreCredit: ['', Validators.required],
      curriculumCredit: ['', Validators.required],
      electiveCredit: ['', Validators.required],
      generalCredit: ['', Validators.required],
      languageCredit: ['', Validators.required],
      otherCredit: ['', Validators.required],
      requiredCredit: ['', Validators.required],
      totalCredit: ['', Validators.required],
      period: ['', Validators.required],
      maxPeriod: ['', Validators.required],
      ordinal: ['', Validators.required],
      program: ['', Validators.required],
      //academicSession: <AcademicSession>{},
      //program: <Program>{},
      //academicSession: <AcademicSession>{},
    });

    if (this.edit) this.editorForm.patchValue(this._curriculum);

  }

  save(curriculum: Curriculum, isValid: boolean): void {

    if (!curriculum.id) this.store.dispatch(this.actions.saveCurriculum(curriculum));
    else this.store.dispatch(this.actions.updateCurriculum(curriculum));
    this.dialog.close();

  }
}