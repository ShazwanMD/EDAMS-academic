import { Injectable } from '@angular/core';
import { Action } from '@ngrx/store';

@Injectable()
export class SectionActions {
    
    static SAVE_SECTION = '[Section] Save Section';

    saveSection(section): Action {
      return {
        type: SectionActions.SAVE_SECTION,
        payload: section
      };
    }

    static SAVE_SECTION_SUCCESS = '[Section] Save Section Success';

    saveSectionSuccess(section): Action {
      return {
        type: SectionActions.SAVE_SECTION_SUCCESS,
        payload: section
      };
    }
    
    
 //find enrollments by section
    static FIND_ENROLLMENTS_BY_SECTION = '[Section] Find Enrollments By Section';

    findEnrollmentsBySection(section): Action {
        console.log("findEnrollmentsBySection");
      return {
        type: SectionActions.FIND_ENROLLMENTS_BY_SECTION,
        payload: section
      };
    }

    static FIND_ENROLLMENTS_BY_SECTION_SUCCESS = '[Section] Find Enrollments By Section Success';
    
    findEnrollmentsBySectionSuccess(enrollments): Action {
        console.log("findEnrollmentsBySectionSuccess");
      return {
        type: SectionActions.FIND_ENROLLMENTS_BY_SECTION_SUCCESS,
        payload: enrollments
      };
    } 
    
  //find appointments by section
    static FIND_APPOINTMENTS_BY_SECTION = '[Section] Find Appointments By Section';

    findAppointmentsBySection(section): Action {
        console.log("findAppointmentsBySection");
      return {
        type: SectionActions.FIND_APPOINTMENTS_BY_SECTION,
        payload: section
      };
    }

    static FIND_APPOINTMENTS_BY_SECTION_SUCCESS = '[Section] Find Appointments By Section Success';

    findAppointmentsBySectionSuccess(appointments): Action {
        console.log("findAppointmentsBySectionSuccess");
      return {
        type: SectionActions.FIND_APPOINTMENTS_BY_SECTION_SUCCESS,
        payload: appointments
      };
    }  
    
  static FIND_OFFERING_BY_CANONICAL_CODE = '[Offering] Find Offering By Canonical Code';

  findOfferingByCanonicalCode(canonicalCode): Action {
    return {
      type: SectionActions.FIND_OFFERING_BY_CANONICAL_CODE,
      payload: canonicalCode
    };
  }

  static FIND_OFFERING_BY_CANONICAL_CODE_SUCCESS = '[Offering] Find Offering By Canonical Code Success';

  findOfferingByCanonicalCodeSuccess(offering): Action {
    return {
      type: SectionActions.FIND_OFFERING_BY_CANONICAL_CODE_SUCCESS,
      payload: offering
    };
  }

  //find sections
  static FIND_SECTIONS = '[Section] Find Sections';

  findSections(): Action {
      console.log("findSections");
      return {
          type: SectionActions.FIND_SECTIONS
      };
  }

  static FIND_SECTIONS_SUCCESS = '[Section] Find Sections Success';

  findSectionsSuccess(canonicalCodes): Action {
      console.log("findSectionsSuccess");
      return {
          type: SectionActions.FIND_SECTIONS_SUCCESS,
          payload: canonicalCodes
      };
  }
  
  //find sections by offering
  static FIND_SECTIONS_BY_OFFERING = '[Offering] Find Sections By Offering';

  findSectionsByOffering(offering): Action {
    return {
      type: SectionActions.FIND_SECTIONS_BY_OFFERING,
      payload: offering
    };
  }

  static FIND_SECTIONS_BY_OFFERING_SUCCESS = '[Offering] Find Sections By Offering Success';

  findSectionsByOfferingSuccess(sections): Action {
    return {
      type: SectionActions.FIND_SECTIONS_BY_OFFERING_SUCCESS,
      payload: sections
    };
  }
    
     
    static FIND_SECTION_BY_CANONICAL_CODE = '[Section] Find Section By Canonical Code';
  findSectionByCanonicalCode(canonicalCode): Action {
    return {
      type: SectionActions.FIND_SECTION_BY_CANONICAL_CODE,
      payload: canonicalCode
    };
  }

  static FIND_SECTION_BY_CANONICAL_CODE_SUCCESS = '[Section] Find Section By Canonical Code Success';
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

  static ADD_SECTION = '[Section] Add Section';

  addSection(offering, section): Action {
    return {
      type: SectionActions.ADD_SECTION,
      payload: {offering:offering, section:section}
    };
  }

  static ADD_SECTION_SUCCESS = '[Section] Add Section Success';

  addSectionSuccess(message): Action {
    return {
      type: SectionActions.ADD_SECTION_SUCCESS,
      payload: message
    };
  }
    
    //delete section
       static REMOVE_SECTION = '[Section] Remove Section';

  deleteSection(offering, section): Action {
    console.log("deleteSection");
    return {
      type: SectionActions.REMOVE_SECTION,
      payload: {offering:offering, section:section}
    };
  }

  static REMOVE_SECTION_SUCCESS = '[Section] Remove Section  Success';

  deleteSectionSuccess(message): Action {
    console.log("deleteSectionSuccess");
    return {
      type: SectionActions.REMOVE_SECTION_SUCCESS,
      payload: message
    };
  }
    
    
   //update section for capacity and ordinal
    static UPDATE_SECTION = '[Section] Update Section';

  updateSection(offering, section): Action {
    console.log("updateSection");
    return {
      type: SectionActions.UPDATE_SECTION,
      payload: {offering:offering, section:section}
    };
  }

  static UPDATE_SECTION_SUCCESS = '[Section] Update Section Success';

  updateSectionSuccess(message): Action {
    console.log("updateSectionSuccess");
    return {
      type: SectionActions.UPDATE_SECTION_SUCCESS,
      payload: message
    };
  } 

}
