package my.edu.umk.pams.academic.profile.stage;

import java.math.BigDecimal;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;

import my.edu.umk.pams.academic.common.model.AdStudyMode;
import my.edu.umk.pams.academic.common.model.AdSubjectCode;
import my.edu.umk.pams.academic.common.model.AdSubjectCodeImpl;
import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.identity.model.AdActorType;
import my.edu.umk.pams.academic.identity.model.AdAddress;
import my.edu.umk.pams.academic.identity.model.AdAddressImpl;
import my.edu.umk.pams.academic.identity.model.AdAddressType;
import my.edu.umk.pams.academic.identity.model.AdGuarantor;
import my.edu.umk.pams.academic.identity.model.AdGuarantorImpl;
import my.edu.umk.pams.academic.identity.model.AdGuarantorType;
import my.edu.umk.pams.academic.identity.model.AdGuardian;
import my.edu.umk.pams.academic.identity.model.AdGuardianImpl;
import my.edu.umk.pams.academic.identity.model.AdGuardianType;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.identity.model.AdStudentImpl;
import my.edu.umk.pams.academic.identity.model.AdStudentStatus;
import my.edu.umk.pams.academic.identity.service.IdentityService;
import my.edu.umk.pams.academic.planner.model.AdAcademicClassification;
import my.edu.umk.pams.academic.planner.model.AdAcademicPeriod;
import my.edu.umk.pams.academic.planner.model.AdAcademicSemester;
import my.edu.umk.pams.academic.planner.model.AdAcademicSession;
import my.edu.umk.pams.academic.planner.model.AdBundleSubject;
import my.edu.umk.pams.academic.planner.model.AdBundleSubjectImpl;
import my.edu.umk.pams.academic.planner.model.AdBundleSubjectPart;
import my.edu.umk.pams.academic.planner.model.AdBundleSubjectPartImpl;
import my.edu.umk.pams.academic.planner.model.AdCohort;
import my.edu.umk.pams.academic.planner.model.AdCohortImpl;
import my.edu.umk.pams.academic.planner.model.AdCourse;
import my.edu.umk.pams.academic.planner.model.AdCourseImpl;
import my.edu.umk.pams.academic.planner.model.AdCurriculum;
import my.edu.umk.pams.academic.planner.model.AdCurriculumImpl;
import my.edu.umk.pams.academic.planner.model.AdFaculty;
import my.edu.umk.pams.academic.planner.model.AdProgram;
import my.edu.umk.pams.academic.planner.model.AdProgramImpl;
import my.edu.umk.pams.academic.planner.model.AdProgramLevel;
import my.edu.umk.pams.academic.planner.model.AdSingleSubject;
import my.edu.umk.pams.academic.planner.model.AdSingleSubjectImpl;
import my.edu.umk.pams.academic.planner.model.AdSubject;
import my.edu.umk.pams.academic.planner.model.AdSubjectImpl;
import my.edu.umk.pams.academic.planner.model.AdSubjectType;
import my.edu.umk.pams.academic.planner.service.PlannerService;
import my.edu.umk.pams.academic.profile.service.ProfileService;
import my.edu.umk.pams.academic.term.model.AdOffering;
import my.edu.umk.pams.academic.term.service.TermService;

@JGivenStage
public class WhenIReviewProfile extends Stage<WhenIReviewProfile> {
	
	private static final Logger LOG = LoggerFactory.getLogger(WhenIReviewProfile.class);

	@Autowired
	private IdentityService identityService;
	
	@Autowired
	private TermService termService;
	
	@Autowired
	private PlannerService plannerService;
	
	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private CommonService commonService;
	
    @ProvidedScenarioState
	private AdStudent student;
    
    @ProvidedScenarioState
   	private AdProgram program;
    
    @ProvidedScenarioState
   	private AdOffering offering;
    
    @ProvidedScenarioState
   	private AdCourse course;
    
    @ProvidedScenarioState
   	private AdProgramLevel level;
    
    
    @ProvidedScenarioState
   	private AdFaculty faculty;
    
    @ProvidedScenarioState
   	private AdCohort cohort;

    @ProvidedScenarioState
	private AdStudentStatus studentStatus;
    
    @ProvidedScenarioState
	private AdAddress address;
    
    @ProvidedScenarioState
	private AdGuarantor guarantor;
    
    @ProvidedScenarioState
	private AdGuardian guardian;
    
    @ProvidedScenarioState
   	private AdAcademicSemester semester;
    
    @ProvidedScenarioState
   	private AdCurriculum curriculum;
    
    @ProvidedScenarioState
   	private AdSubject subject;
    
    @ProvidedScenarioState
   	private AdSingleSubject singleSubject;
    
    @ProvidedScenarioState
   	private AdBundleSubject bundleSubject;
    
    @ProvidedScenarioState
   	private AdBundleSubjectPart part;
    
    
    @ProvidedScenarioState
   	private List<AdBundleSubjectPart> parts;
    
    @ProvidedScenarioState
   	private AdSubjectCode subjectCode;
    
    @ProvidedScenarioState
   	private AdStudyMode studyMode;
    
    @ProvidedScenarioState
   	private AdAcademicSession academicSession;
    
    @ProvidedScenarioState
    List<AdCohort> cohorts;
    
    
    @ProvidedScenarioState
    List<AdSubject> subjects;
    
    @ProvidedScenarioState
    List<AdOffering> offerings;
    
    @ExpectedScenarioState
	private String matricNo;
    
	public WhenIReviewProfile i_review_my_profile() {
		cohort = plannerService.findCohortByCode("A10/CHRT/A10");

		cohort = plannerService.findCohortByCode("FKP/PHD/PAM/CHRT/201720181");
		
		
		//student
		student = new AdStudentImpl();
		student.setName("SAM");
		student.setCohort(cohort);
		student.setActorType(AdActorType.STUDENT);
		student.setEmail("sam@umk.edu.my");
		student.setFax("123456");
		student.setIdentityNo("110976");
		student.setMobile("0179282817");
		student.setPhone("09777777");
		student.setStudentStatus(studentStatus.ACTIVE);
		identityService.saveStudent(student);
		LOG.debug("STUDENT PROFILE : =======================================================");
		LOG.debug("Student Name :{}",student.getName());
		LOG.debug("Student MatricNo :{}",student.getIdentityNo());
		LOG.debug("Student Status :{}",student.getStudentStatus().name());
		LOG.debug("Type :{}",student.getActorType().name());
		LOG.debug("Student Cohort :{}",student.getCohort().getCode());
		LOG.debug("");
		//address
		address = new AdAddressImpl();
		address.setAddress1("Bunut Payong");
		address.setCountryCode(commonService.findCountryCodeByCode("MY"));
		address.setPostCode("15150");
		address.setStateCode(commonService.findStateCodeByCode("MY-03"));
		address.setStudent(student);
		address.setType(AdAddressType.MAILING);
		profileService.addAddress(student, address);
		Assert.notNull(address, "Address Not Save");
		LOG.debug("STUDENT ADDRESS : =======================================================");
		LOG.debug("Student Name :{}",address.getStudent().getName());
		LOG.debug("Address :{}",address.getAddress1());
		LOG.debug("PostCode :{}", address.getPostCode());
		LOG.debug("State :{}",address.getStateCode().getDescription());
		LOG.debug("Country :{}",address.getCountryCode().getDescription());		
		LOG.debug("Address Type :{}",address.getType().name());
		LOG.debug("");
		//guarantor
		guarantor = new AdGuarantorImpl();
		guarantor.setIdentityNo("920718");
		guarantor.setName("Shazwan");
		guarantor.setStudent(student);
		guarantor.setType(AdGuarantorType.PRIMARY);
		profileService.addGuarantor(student, guarantor);
		LOG.debug("GUARANTOR PROFILE : =======================================================");
		LOG.debug("Student Name :{}",guarantor.getStudent().getName());
		LOG.debug("Guarantor Name :{}",guarantor.getName());
		LOG.debug("Guarantor NRIC Number :{}", guarantor.getIdentityNo());
		LOG.debug("Guarantor Type :{}",guarantor.getType().name());
		LOG.debug("");
		//guardian
		guardian = new AdGuardianImpl();
		guardian.setIdentityNo("99999");
		guardian.setName("mohd din");
		guardian.setSalary(BigDecimal.ONE);
		guardian.setStudent(student);
		guardian.setType(AdGuardianType.FATHER);
		profileService.addGuardian(student, guardian);
		LOG.debug("GUARDIAN PROFILE : =======================================================");
		LOG.debug("Student Name :{}",guardian.getStudent().getName());
		LOG.debug("Guardian Name",guardian.getName());
		LOG.debug("Guardian NRIC Number :{}",guardian.getIdentityNo());
		LOG.debug("Guardian Type :{}",guardian.getType().name());
		LOG.debug("");
	
	
			
		return self();
		
	}
	
	public WhenIReviewProfile i_review_subject(){
		student = identityService.findStudentByMatricNo("110976");
		LOG.debug("Student Name :{}", student.getName());
		LOG.debug("Student Matric No :{}", student.getMatricNo());
		LOG.debug("");
		
		cohort = student.getCohort();
		LOG.debug("Cohort :{}", cohort.getCode());
		LOG.debug("");
		
		curriculum = cohort.getCurriculum();
		LOG.debug("Curriculum Code :{}", curriculum.getCode());
		LOG.debug("Core Credit :{}", curriculum.getCoreCredit());
		LOG.debug("Elective Credit :{}", curriculum.getElectiveCredit());
		LOG.debug("General Credit :{}", curriculum.getGeneralCredit());
		LOG.debug("Curriculum Credit :{}", curriculum.getCurriculumCredit());
		LOG.debug("Language Credit :{}", curriculum.getLanguageCredit());
		LOG.debug("Others Credit :{}", curriculum.getOthersCredit());
		LOG.debug("Required Credit :{}", curriculum.getRequiredCredit());
		LOG.debug("Total Credit :{}", curriculum.getTotalCredit());
		LOG.debug("Period :{}", curriculum.getPeriod());
		LOG.debug("Max Period :{}", curriculum.getMaxPeriod());
		LOG.debug("Program Name :{}", curriculum.getProgram().getCode());
		LOG.debug("");
		
		program = curriculum.getProgram();
		LOG.debug("Program Code :{}", program.getCode());
		LOG.debug("Faculty :{}", program.getFaculty().getName());
		LOG.debug("Level of Study :{}", program.getProgramLevel().getCode());
		LOG.debug("Program Title :{}", program.getTitle());
		LOG.debug("Program TitleEn :{}", program.getTitleEn());
		LOG.debug("Program TitleMs :{}", program.getTitleMs());
		LOG.debug("");
		
		faculty = program.getFaculty();
		LOG.debug("Faculty :{}", faculty.getName());
		LOG.debug("");



		
		
		return self();
	}

	
	
}
