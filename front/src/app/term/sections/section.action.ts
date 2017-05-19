import { Injectable } from '@angular/core';
import { Action } from '@ngrx/store';

@Injectable()
export class SectionActions {

  static FIND_SECTION_BY_CANONICAL_CODE = '[Section] Find Section By Canonical Code';
  findSectionByCanonicalCode(canonicalCode): Action {
    return {
      type: SectionActions.FIND_SECTION_BY_CANONICAL_CODE,
      payload: canonicalCode
    };
  }

  static FIND_SECTION_BY_CANONICAL_CODE_SUCCESS = '[Offering] Find Section By Canonical Code Success';
  findSectionByCanonicalCodeSuccess(section): Action {
    return {
      type: SectionActions.FIND_SECTION_BY_CANONICAL_CODE_SUCCESS,
      payload: section
    };
  }

  static FIND_SECTION_BY_CURRENT = '[Section] Find Section By Current';
  findSectionByCurrent(section): Action {
    return {
      type: SectionActions.FIND_SECTION_BY_CURRENT,
      payload: section
    };
  }

  static FIND_SECTION_BY_CURRENT_SUCCESS = '[Section] Find Section By Current Success';
  findSectionByCurrentSuccess(section): Action {
    return {
      type: SectionActions.FIND_SECTION_BY_CURRENT_SUCCESS,
      payload: section
    };
  }

  static FIND_SECTION_BY_ID_SUCCESS = '[Section] Find Section By Id Success';
  findSectionByIdSuccess(section): Action {
    return {
      type: SectionActions.FIND_SECTION_BY_ID_SUCCESS,
      payload: section
    };
  }


}
