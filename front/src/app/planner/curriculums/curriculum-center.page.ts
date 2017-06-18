import {CurriculumActions} from './curriculum.action';
import {CurriculumEditorDialog} from './dialog/curriculum-editor.dialog';
import {Router, ActivatedRoute} from '@angular/router';
import {Component, OnInit, ViewContainerRef, ChangeDetectionStrategy} from '@angular/core';
import {CommonService} from '../../../services';
import {Store} from '@ngrx/store';
import {Observable} from 'rxjs';
import { Curriculum} from './curriculum.interface';
import {PlannerService} from './../../../services/planner.service';
import {PlannerModuleState} from '../index';
import {MdDialog, MdDialogConfig, MdDialogRef} from '@angular/material';

@Component({
  selector: 'pams-curriculum-center',
  templateUrl: './curriculum-center.page.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class CurriculumCenterPage implements OnInit {

  private CURRICULUMS: string[] = 'plannerModuleState.curriculums'.split('.');
  private curriculums$: Observable<Curriculum[]>;
  private editorDialogRef: MdDialogRef<CurriculumEditorDialog>;

    private columns: any[] = [
   {name: 'code', label: 'Code'},
    {name: 'core', label: 'Core Credit'},
    {name: 'curriculum', label: 'Curriculum Credit'},
    {name: 'elective', label: 'Elective Credit'},
    // {name: 'general', label: 'General Credit'},
    // {name: 'language', label: 'Language Credit'},
    // {name: 'other', label: 'Other Credit'},
    // {name: 'required', label: 'Required Credit'},
    // {name: 'totalCredit', label: 'Total Credit'},
    // {name: 'ordinal', label: 'Ordinal'},
    {name: 'program.code', label: 'Program'},
    {name: 'action', label: ''},
  ];


  constructor(private router: Router,
              private route: ActivatedRoute,
              private actions: CurriculumActions,
              private store: Store<PlannerModuleState>,
              private vcf: ViewContainerRef,
              private dialog: MdDialog) {
    this.curriculums$ = this.store.select(...this.CURRICULUMS);
  }

  viewCurriculum(curriculum: Curriculum) {
    console.log('curriculum: ' + curriculum.id);
    this.router.navigate(['/curriculums-detail', curriculum.id]);
  }

  filter(): void {
  }

  showDialog(code: Curriculum): void {
    console.log('showDialog');
    let config = new MdDialogConfig();
    config.viewContainerRef = this.vcf;
    config.role = 'dialog';
    config.width = '40%';
    config.position = {top: '0px'};
    this.editorDialogRef = this.dialog.open(CurriculumEditorDialog, config);
    //  if (code) this.editorDialogRef.componentInstance._curriculum = code;
    // this.creatorDialogRef.componentInstance.offering = this.offering;
    this.editorDialogRef.afterClosed().subscribe((res) => {
      console.log('close dialog');
      // load something here
    });
  }

  goBack(route: string): void {
    this.router.navigate(['/curriculums']);
  }

  ngOnInit(): void {
    this.store.dispatch(this.actions.findCurriculums());
  }
}
