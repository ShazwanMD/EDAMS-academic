import {Action} from '@ngrx/store';

import {Guarantor} from "./guarantor.interface";
import {ProfileActions} from "./profile.action";

export type GuarantorListState = Guarantor[];

const initialState: GuarantorListState = <Guarantor[]>[];

export function guarantorListReducer(state = initialState, action: Action): GuarantorListState {
  console.log("action: " + action.type);
  switch (action.type) {
    case ProfileActions.FIND_GUARANTORS_SUCCESS: {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}
