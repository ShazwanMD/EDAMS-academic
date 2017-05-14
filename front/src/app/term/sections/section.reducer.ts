import {Action} from '@ngrx/store';
import {SectionActions} from "./section.action";
import {Section} from "./section.interface";

export type SectionState = Section;

const initialState: SectionState = <Section>{};

export function sectionReducer(state = initialState, action: Action): SectionState {
  switch (action.type) {
    case SectionActions.FIND_SECTION_BY_ID_SUCCESS: {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}