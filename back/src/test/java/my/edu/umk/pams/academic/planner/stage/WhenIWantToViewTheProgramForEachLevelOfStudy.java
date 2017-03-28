package my.edu.umk.pams.academic.planner.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.planner.model.AdFaculty;
import my.edu.umk.pams.academic.planner.model.AdProgram;
import my.edu.umk.pams.academic.planner.model.AdProgramImpl;
import my.edu.umk.pams.academic.planner.model.AdProgramLevel;
import my.edu.umk.pams.academic.planner.service.PlannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

@JGivenStage
public class WhenIWantToViewTheProgramForEachLevelOfStudy extends Stage<WhenIWantToViewTheProgramForEachLevelOfStudy> {

    @Autowired
    private PlannerService plannerService;

    @Autowired
    private CommonService commonService;

    @ProvidedScenarioState
    private AdFaculty faculty;

    private String facultyCode;

    public WhenIWantToViewTheProgramForEachLevelOfStudy I_want_to_view_the_program_$_for_each_level_of_study(String string) {
        faculty = plannerService.findFacultyByCode(facultyCode);
        AdProgramLevel programLevel = plannerService.findProgramLevelByCode("PHD");
        Assert.notNull(faculty, "faculty CANNOT be null");

        AdProgram program = new AdProgramImpl();
        program.setCode("code");
        program.setFaculty(faculty);
        program.setProgramLevel(programLevel);
        program.setTitle("Master Business Administration ");
        program.setTitleEn("Master of Enterpreneurship (Management)");
        program.setTitleMs("Master of Enterpreneurship(Finance)");
        plannerService.saveProgram(program);

        return self();
    }

}