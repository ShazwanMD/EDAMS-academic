package my.edu.umk.pams.academic.profile;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import com.tngtech.jgiven.annotation.As;
import com.tngtech.jgiven.integration.spring.SpringScenarioTest;

import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.profile.stage.ThenLecturerReviewedStudentGraduationStatus;
import my.edu.umk.pams.academic.profile.stage.WhenLecturerReviewStudentGraduationStatus;
import my.edu.umk.pams.bdd.stage.GivenIAmAcademicStaff;
import my.edu.umk.pams.bdd.tags.Issue;
import my.edu.umk.pams.bdd.tags.Submodule;


@RunWith(SpringRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
@As("As a supervisor, I want to view graduation status of student so that I can know the student’s status of graduation under my supervision")
@Submodule("Profile")
@Issue("PAMA-68")
public class US_AD_PFL_5006 extends SpringScenarioTest<GivenIAmAcademicStaff, WhenLecturerReviewStudentGraduationStatus, ThenLecturerReviewedStudentGraduationStatus> {

	private static final Logger LOG = LoggerFactory.getLogger(US_AD_PFL_5006.class);
	
    private static final String IDENTITY_NO = "A17P005";
	
	@Test
	@Rollback
	public void scenario5006(){
		given().i_am_a_staff_in_current_academic_session();
		when().lecturer_review_student_graduation_status(IDENTITY_NO);
		then().lecturer_reviewed_student_graduation_status();
		
	}
}
