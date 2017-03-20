package my.edu.umk.pams.academic.profile;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.tngtech.jgiven.integration.spring.SpringScenarioTest;

import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.profile.stage.ThenICanUpdateMyCurrentStatus;
import my.edu.umk.pams.academic.profile.stage.WhenIUpdateStudentActivationStatus;
import my.edu.umk.pams.bdd.stage.GivenIAmStudent;

/*As student,
I want to view student activation status,
so that I know current status	
*/


@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)

public class US_AD_PFL_1004 extends SpringScenarioTest<GivenIAmStudent, WhenIUpdateStudentActivationStatus, ThenICanUpdateMyCurrentStatus> {

	private static final Logger LOG = LoggerFactory.getLogger(US_AD_PFL_2002.class);

	@Before
	public void before() {
	}

	@After
	public void after() {
	}
	
	@Test
	@Rollback(true)
	public void scenario01() {
       given().I_am_a_student_in_current_academic_session();
       when().I_update_student_activation_status();
       then().I_can_update_my_current_status();
	     }   

}
