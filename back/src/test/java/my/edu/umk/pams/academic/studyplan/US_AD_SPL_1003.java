package my.edu.umk.pams.academic.studyplan;

import com.tngtech.jgiven.integration.spring.SpringScenarioTest;
import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.studyplan.stage.ThenCoursesUpdated;
import my.edu.umk.pams.academic.studyplan.stage.WhenIUpdateCourses;
import my.edu.umk.pams.bdd.stage.GivenIAmCPSAdministrator;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/*As an admin academic, 
i can update courses for a faculty, 
so that its information of new course for each programmes is updated 

@author PAMS - Rodziah Mohamad Nor
*/

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)

public class US_AD_SPL_1003 extends SpringScenarioTest<GivenIAmCPSAdministrator, WhenIUpdateCourses, ThenCoursesUpdated> {

    private static final Logger LOG = LoggerFactory.getLogger(US_AD_SPL_1003.class);

    // refer to data/AD_FCTY.sql
    public static final String FACULTY_CODE = "FIT";

    @Test
    @Rollback
    public void scenario1() {
        given().I_am_a_CPS_administrator();
        when().I_update_courses_to_faculty_code_$a(FACULTY_CODE);
        then().new_courses_information_updated();
    }
}
