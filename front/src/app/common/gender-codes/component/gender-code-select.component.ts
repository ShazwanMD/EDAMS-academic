import { GenderCode } from './../gender-code.interface';
import { CommonModuleState } from './../../index';
import { CommonActions } from './../common.action';
import { FormControl } from '@angular/forms';
import { Store } from '@ngrx/store';
import { Observable } from 'rxjs';
import { Component, Input, OnInit } from '@angular/core';


@Component({

    selector: 'pams-gender-code-select',
    templateUrl: './gender-code-select.component.html',
})

export class GenderCodeSelectComponent implements OnInit{

private GENDER_CODE = "commonModuleState.genderCodes".split(".");
  @Input() placeholder: string;
  @Input() innerFormControl: FormControl;
  genderCodes$: Observable<GenderCode[]>;

  constructor(private store: Store<CommonModuleState>,
              private actions: CommonActions) {
    this.genderCodes$ = this.store.select(...this.GENDER_CODE);
  }

  ngOnInit() {
    this.store.dispatch(this.actions.findGenderCodes());
  }

  selectChangeEvent(event: GenderCode) {
    this.innerFormControl.setValue(event, {emitEvent: false});
  }

}