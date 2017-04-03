package my.edu.umk.pams.academic.profile.stage;

import java.util.List;

import javax.mail.Address;

import org.apache.activemq.artemis.core.settings.impl.AddressSettings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;

import my.edu.umk.pams.academic.common.model.AdCountryCode;
import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.identity.model.AdAddress;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.identity.service.IdentityService;
import my.edu.umk.pams.academic.profile.service.ProfileService;

@JGivenStage
public class WhenReviewStudentProfileInfo extends Stage<WhenReviewStudentProfileInfo> {

	private static final Logger LOG = LoggerFactory.getLogger(WhenReviewStudentProfileInfo.class);
	
    @Autowired
    private IdentityService identityService;
    @Autowired
    private ProfileService profileService;
    @Autowired
    private CommonService commonService;
    

	@ExpectedScenarioState
	private AdStudent student;
	
	@ExpectedScenarioState
	private AdAddress address;
	
	@ExpectedScenarioState
	private AdCountryCode countryCode;
	
	
	
	
	
	public WhenReviewStudentProfileInfo supervisor_review_student_profile(String studentNo) {
		
		student = identityService.findStudentByStudentNo(studentNo);
		
		address = profileService.findAddress(student);
		LOG.debug(address.getAddress1());
		LOG.debug(address.getAddress2());
		LOG.debug(address.getAddress3());
		LOG.debug(address.getPostCode());
		LOG.debug("Country Code:{}",address.getCountryCode());
		
		LOG.debug("Student's name : {}", student.getName());
		LOG.debug("Student's matric number : {}", student.getMatricNo());
		LOG.debug("Student's email : {}", student.getEmail());
		LOG.debug("Student's mobile number : {}", student.getMobile());
		LOG.debug("Student's phone number : {}", student.getPhone());
		LOG.debug("Student's status	: {}", student.getStudentStatus());
		
		
	    
		
		
		
		
		
		

		
		
		return self();
	}

}
