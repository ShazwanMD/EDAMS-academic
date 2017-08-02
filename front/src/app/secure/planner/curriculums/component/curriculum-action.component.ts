import {CurriculumUpdateDialog} from '../dialog/curriculum-update.dialog';
import {ChangeDetectionStrategy, Component, Input, ViewContainerRef} from '@angular/core';
import {Curriculum} from '../../../../shared/model/planner/curriculum.interface';
import {MdDialog, MdDialogConfig, MdDialogRef, MdSnackBar} from '@angular/material';
import {CurriculumActions} from '../curriculum.action';
import {Store} from '@ngrx/store';
import {PlannerModuleState} from '../../index';

@Component({
  selector: 'pams-curriculum-action',
  templateUrl: './curriculum-action.component.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class CurriculumActionComponent {

  private updateDialogRef: MdDialogRef<CurriculumUpdateDialog>;
  @Input() curriculum: Curriculum;

  constructor(private actions: CurriculumActions,
              private store: Store<PlannerModuleState>,
              private vcf: ViewContainerRef,
              private dialog: MdDialog,
              private snackBar: MdSnackBar) {

  }

  updateDialog(): void {
    console.log('CurriculumAction');
    console.log(this.curriculum);
    let config = new MdDialogConfig();
    config.viewContainerRef = this.vcf;
    config.role = 'dialog';
    config.width = '60%';
    config.height = '50%';
    config.position = {top: '0px'};
    this.updateDialogRef = this.dialog.open(CurriculumUpdateDialog, config);
    this.updateDialogRef.componentInstance.curriculum = this.curriculum;
    // set
    this.updateDialogRef.afterClosed().subscribe((res) => {
      console.log('close dialog');
    });
  }

  delate(): void {
    let snackBarRef = this.snackBar.open('Delate Curriculum', 'OK');
    // snackBarRef.afterDismissed().subscribe(() => this.store.dispatch(this.actions.delateCurriculum(this.curriculum)));
  }
}