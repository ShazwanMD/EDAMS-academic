package my.edu.umk.pams.academic.studyplan;

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
import my.edu.umk.pams.academic.studyplan.stage.ThenIKnowProgramDetails;
import my.edu.umk.pams.academic.studyplan.stage.WhenIViewProgramFaculty;
import my.edu.umk.pams.bdd.stage.GivenIAmPPSAdministrator;


/**
 * As an admin academic, 
 * I want to view program faculty, 
 * so that I can know program details
 **/

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
public class US_AD_SPL_0004 extends SpringScenarioTest<GivenIAmPPSAdministrator, WhenIViewProgramFaculty, ThenIKnowProgramDetails> {

	private static final Logger LOG = LoggerFactory.getLogger(US_AD_SPL_0004.class);

    private static final String FACULTY_CODE ="FKP";
	
	@Before
	public void before() {
	}

	@After
	public void after() {
	}

	@Test
	@Rollback(true)
	public void scenario0004() {
		given().I_am_a_PPS_administrator_in_current_academic_session();
		when().I_want_to_view_program_for_faculty_$(FACULTY_CODE);
		then().I_know_program_details();
	}
}