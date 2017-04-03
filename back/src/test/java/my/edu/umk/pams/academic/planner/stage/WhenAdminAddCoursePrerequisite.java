package my.edu.umk.pams.academic.planner.stage;

/*
 * As an admin academic, 
 *  i want to set up  course prerequisite
 *    so that courses has a prerequisite
 *    
 * @author ain
 */

import org.springframework.beans.factory.annotation.Autowired;
import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.integration.spring.JGivenStage;

import my.edu.umk.pams.academic.planner.model.AdCourse;
import my.edu.umk.pams.academic.planner.service.PlannerService;

@JGivenStage
public class WhenAdminAddCoursePrerequisite extends Stage<WhenAdminAddCoursePrerequisite> {
	
	    @Autowired
	    private PlannerService plannerService;

	public WhenAdminAddCoursePrerequisite Admin_add_prereq_$_to_course_$(String courseCodePrereq, String courseCode) {

		AdCourse course = plannerService.findCourseByCode(courseCode);
		AdCourse prereqCourse = plannerService.findCourseByCode(courseCodePrereq);

    	plannerService.addPrerequisites(course, prereqCourse);
    	
        return self();

    }

}