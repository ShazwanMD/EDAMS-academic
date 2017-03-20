package my.edu.umk.pams.academic.profile.stage;

import org.springframework.beans.factory.annotation.Autowired;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;

import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.profile.service.ProfileService;
import my.edu.umk.pams.academic.studyplan.model.AdCourse;
import my.edu.umk.pams.academic.studyplan.model.AdFaculty;
import my.edu.umk.pams.academic.studyplan.service.StudyplanService;

@JGivenStage
public class ThenInformationIsCurrent extends Stage<ThenInformationIsCurrent> {

	@Autowired
	private ProfileService profileService;

	@Autowired
	private CommonService commonService;

	@Autowired
	private StudyplanService studyplanService;

	@ExpectedScenarioState
	private AdStudent student;

	@ExpectedScenarioState
	private AdCourse course;

	@ExpectedScenarioState
	private AdFaculty faculty;

	public ThenInformationIsCurrent Course_info_is_current() {

		return self();
	}
}