package my.edu.umk.pams.bdd.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.identity.model.AdUser;
import my.edu.umk.pams.academic.security.integration.AdUserDetails;
import my.edu.umk.pams.academic.studyplan.model.AdAcademicSession;
import my.edu.umk.pams.academic.studyplan.model.AdProgram;
import my.edu.umk.pams.academic.studyplan.service.StudyplanService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@JGivenStage
public class GivenIAmStudent extends Stage<GivenIAmStudent> {

    private static final Logger LOG = LoggerFactory.getLogger(GivenIAmStudent.class);

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private StudyplanService studyplanService;

    @ProvidedScenarioState
    private AdAcademicSession academicSession;

    @ProvidedScenarioState
    private AdStudent student;

    @ProvidedScenarioState
    private AdProgram program;

    public GivenIAmStudent I_am_a_student_in_$_academic_session(String academicSessionCode){
        loginAsStudent();
        academicSession = studyplanService.findAcademicSessionByCode(academicSessionCode);
        return self();
    }

    public GivenIAmStudent I_am_a_student_in_current_academic_session(){
        loginAsStudent();
        academicSession = studyplanService.findCurrentAcademicSession();
        return self();
    }


    public GivenIAmStudent I_pick_program_$(String code){
        program = studyplanService.findProgramByCode(code);
        return self();
    }

    private void loginAsStudent() {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken("student1", "abc123");
        Authentication authed = authenticationManager.authenticate(token);
        SecurityContextHolder.getContext().setAuthentication(authed);

        // retrieve student from user
        AdUser user = ((AdUserDetails) authed.getPrincipal()).getUser();
        student = (AdStudent) user.getActor();
    }
}
