package my.edu.umk.pams.academic.studyplan;

import com.tngtech.jgiven.integration.spring.SpringScenarioTest;
import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.studyplan.stage.ThenFacultyHasCourse;
import my.edu.umk.pams.academic.studyplan.stage.WhenIAddACourse;
import my.edu.umk.pams.bdd.stage.GivenIAmPPSAdministrator;
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

/**
 * As an admin academic,
 * I want to set up courses for a faculty,
 * so that a faculty will be populated with courses
 *
 * @author PAMS
 */
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
public class US_AD_SPL_0002 extends SpringScenarioTest<GivenIAmPPSAdministrator, WhenIAddACourse, ThenFacultyHasCourse> {

    private static final Logger LOG = LoggerFactory.getLogger(US_AD_SPL_0002.class);
    public static final String FACULTY_CODE = "FKP";

    @Before
    public void before() {
    }

    @After
    public void after() {
    }

    @Test
    @Rollback(true)
    public void scenario1() {
        given().I_am_a_PPS_administrator();
        when().I_add_a_course_to_faculty_code_$(FACULTY_CODE);
        then().faculty_has_courses();
    }
}
