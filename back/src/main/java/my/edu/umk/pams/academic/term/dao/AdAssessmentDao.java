package my.edu.umk.pams.academic.term.dao;

import my.edu.umk.pams.academic.core.GenericDao;
import my.edu.umk.pams.academic.identity.model.AdUser;
import my.edu.umk.pams.academic.term.model.AdAssessment;
import my.edu.umk.pams.academic.term.model.AdAssessmentType;
import my.edu.umk.pams.academic.term.model.AdOffering;
import my.edu.umk.pams.academic.term.model.AdSection;
import my.edu.umk.pams.academic.planner.model.*;

import java.util.List;

/**
 * todo(uda): assessment belongs to term??
 * @author PAMS
 */
public interface AdAssessmentDao extends GenericDao<Long, AdAssessment> {

    // ====================================================================================================
    // FINDER
    // ====================================================================================================

    AdAssessment findByCanonicalCode(String canonicalCode);

    AdAssessment findByCodeAndOfferingAndSession(String code, AdAcademicSession academicSession, AdOffering offering);

    List<AdAssessment> find(AdAcademicSession academicSession, AdOffering offering);

    List<AdAssessment> find(AdAcademicSession academicSession, AdOffering offering, Integer offset, Integer limit);

    List<AdAssessment> find(String filter, Integer offset, Integer limit);

    // ====================================================================================================
    // HELPER
    // ====================================================================================================

    Integer count(String filter);

    Integer count(AdAcademicSession academicSession, AdOffering offering);

    Integer count(AdAcademicSession academicSession, AdOffering offering, AdAssessmentType type);

    boolean isExists(String code, AdAcademicSession academicSession, AdOffering offering);

    boolean isExists(String canonicalCode);

    boolean hasAssessment(AdAcademicSession academicSession, AdOffering offering);

    boolean hasGradebook(AdSection section, AdAssessment assessment);
    
    // ====================================================================================================
    // CRUD
    // ====================================================================================================
    
    void addAssessment(AdOffering offering, AdAssessment assessment, AdUser user);

    void updateAssessment(AdOffering offering, AdAssessment assessment, AdUser user);

    void deleteAssessment(AdOffering offering, AdAssessment assessment, AdUser user);

}
