package my.edu.umk.pams.academic.web.module.planner.controller;

import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.identity.service.IdentityService;
import my.edu.umk.pams.academic.planner.model.*;
import my.edu.umk.pams.academic.planner.service.PlannerService;
import my.edu.umk.pams.academic.web.module.planner.vo.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * @author PAMS
 */
@Transactional
@RestController
@RequestMapping("/api/planner")
public class PlannerController {

    private static final Logger LOG = LoggerFactory.getLogger(PlannerController.class);

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private CommonService commonService;

    @Autowired
    private IdentityService identityService;

    @Autowired
    private PlannerService plannerService;

    @Autowired
    private PlannerTransformer plannerTransformer;

    // ====================================================================================================
    // ACADEMIC SESSION
    // ====================================================================================================
    @RequestMapping(value = "/academicSessions", method = RequestMethod.GET)
    public ResponseEntity<List<AcademicSession>> findAcademicSessions() {
        List<AdAcademicSession> academicSessions = plannerService.findAcademicSessions(0, 100);
        return new ResponseEntity<List<AcademicSession>>(plannerTransformer.toAcademicSessionVos(academicSessions), HttpStatus.OK);
    }

    @RequestMapping(value = "/academicSessions/current", method = RequestMethod.GET)
    public ResponseEntity<AcademicSession> findCurrentAcademicSessions() {
        return new ResponseEntity<AcademicSession>(
                plannerTransformer.toAcademicSessionVo(plannerService.findCurrentAcademicSession()), HttpStatus.OK);
    }

    @RequestMapping(value = "/academicSessions/{code}", method = RequestMethod.GET)
   
    public ResponseEntity<AcademicSession> findAcademicSessionByCode(@PathVariable String code) {
    	LOG.debug("SessionCode:{}",code);
        return new ResponseEntity<AcademicSession>(plannerTransformer.toAcademicSessionVo
                (plannerService.findAcademicSessionByCode(code)), HttpStatus.OK);
    }

    @RequestMapping(value = "/academicSessions/{code}", method = RequestMethod.PUT)
    public ResponseEntity<String> updateAcademicSession(@PathVariable String code, @RequestBody AcademicSession vo) {
        dummyLogin();
        LOG.debug("SessionCode:{}",code);
    	AdAcademicSession academicSession = plannerService.findAcademicSessionByCode(code);
        academicSession.setDescription(vo.getDescription());
        academicSession.setCurrent(vo.isCurrent());
        academicSession.setStartDate(vo.getstartDate());
        academicSession.setEndDate(vo.getendDate());
        academicSession.setSemester(AdAcademicSemester.get(vo.getSemester().ordinal()));
        academicSession.setYear(plannerService.findByCode(academicSession.getYear().getYear()));
        plannerService.updateAcademicSession(academicSession);
        return new ResponseEntity<String>(academicSession.getCode(), HttpStatus.OK);
    }

    @RequestMapping(value = "/academicSessions/{code}/save", method = RequestMethod.POST)
    public ResponseEntity<String> saveAcademicSession(@PathVariable String code, @RequestBody AcademicSession vo) {
        dummyLogin();
        AdAcademicSession academicSession = new AdAcademicSessionImpl();
        academicSession.setCode(vo.getCode());
        academicSession.setDescription(vo.getDescription());
        academicSession.setCurrent(vo.isCurrent());
        academicSession.setStartDate(vo.getstartDate());
        academicSession.setEndDate(vo.getendDate());
        academicSession.setSemester(AdAcademicSemester.get(vo.getSemester().ordinal()));
        vo.setYear(plannerTransformer.toAcademicYearVo(academicSession.getYear()));
        plannerService.saveAcademicSession(academicSession);
        return new ResponseEntity<String>("Success", HttpStatus.OK);
    }

    @RequestMapping(value = "/academicSessions/{code}/activate", method = RequestMethod.GET)
    public ResponseEntity<String> activateAcademicSession(@PathVariable String code) {
        dummyLogin();
        LOG.debug("activate sesssion");
        AdAcademicSession academicSession = plannerService.findAcademicSessionByCode(code);
        academicSession.setCurrent(true);
        plannerService.updateAcademicSession(academicSession);
        return new ResponseEntity<String>(academicSession.getCode(), HttpStatus.OK);
    }

    @RequestMapping(value = "/academicSessions/{code}/deactivate", method = RequestMethod.GET)
    public ResponseEntity<String> deactivateAcademicSession(@PathVariable String code) {
        dummyLogin();
        LOG.debug("deactivate sesssion");
        AdAcademicSession academicSession = plannerService.findAcademicSessionByCode(code);
        academicSession.setCurrent(false);
        plannerService.updateAcademicSession(academicSession);
        return new ResponseEntity<String>(academicSession.getCode(), HttpStatus.OK);
    }

    // ====================================================================================================
    // FACULTY
    // ====================================================================================================

    @RequestMapping(value = "/faculties", method = RequestMethod.GET)
    public ResponseEntity<List<Faculty>> findFaculties() {
        List<AdFaculty> faculties = plannerService.findFaculties(0, 100);
        return new ResponseEntity<List<Faculty>>(plannerTransformer.toFacultyVos(faculties), HttpStatus.OK);
    }

    @RequestMapping(value = "/faculties/{code}", method = RequestMethod.GET)
    public ResponseEntity<Faculty> findFacultyByCode(@PathVariable String code) throws UnsupportedEncodingException {
        return new ResponseEntity<Faculty>(plannerTransformer.toFacultyVo(plannerService.findFacultyByCode(code)),
                HttpStatus.OK);
    }

    @RequestMapping(value = "/faculties/{code}/programs", method = RequestMethod.GET)
    public ResponseEntity<List<Program>> findProgramsByFaculty(@PathVariable String code)
            throws UnsupportedEncodingException {
        AdFaculty faculty = plannerService.findFacultyByCode(code);
        return new ResponseEntity<List<Program>>(plannerTransformer.toProgramVos(plannerService.findPrograms(faculty)),
                HttpStatus.OK);
    }

    @RequestMapping(value = "/faculties/{code}/courses", method = RequestMethod.GET)
    public ResponseEntity<List<Course>> findCoursesByFaculty(@PathVariable String code)
            throws UnsupportedEncodingException {
        AdFaculty faculty = plannerService.findFacultyByCode(code);
        return new ResponseEntity<List<Course>>(plannerTransformer.toCourseVos(plannerService.findCourses(faculty)),
                HttpStatus.OK);
    }

    // business methods

    @RequestMapping(value = "/faculties/create", method = RequestMethod.POST)
    public void createFaculty(@RequestBody Faculty faculty) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/faculties/{code}", method = RequestMethod.PUT)
    public void updateFaculty(@PathVariable String code, @RequestBody Faculty faculty) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/faculties/{code}/activate", method = RequestMethod.POST)
    public void activateFaculty(@PathVariable String code) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/faculties/{code}/deactivate", method = RequestMethod.POST)
    public void deactivateFaculty(@PathVariable String code) {
        throw new UnsupportedOperationException();
    }

    // ====================================================================================================
    // PROGRAM
    // ====================================================================================================

    @RequestMapping(value = "/programs", method = RequestMethod.GET)
    public ResponseEntity<List<Program>> findPrograms() {
        List<AdProgram> programs = plannerService.findPrograms(0, 100);
        return new ResponseEntity<List<Program>>(plannerTransformer.toProgramVos(programs), HttpStatus.OK);
    }

    @RequestMapping(value = "/programs/{code}", method = RequestMethod.GET)
    public ResponseEntity<Program> findProgramByCode(@PathVariable String code) {
        Program program = plannerTransformer.toProgramVo(plannerService.findProgramByCode(code));
        return new ResponseEntity<Program>(program, HttpStatus.OK);
    }

    @RequestMapping(value = "/programs/{code}/cohorts", method = RequestMethod.GET)
    public ResponseEntity<List<Cohort>> findCohortsByProgram(@PathVariable String code) {
        AdProgram program = plannerService.findProgramByCode(code);
        return new ResponseEntity<List<Cohort>>(
                plannerTransformer.toCohortVos(plannerService.findCohorts(program, 0, 100)), HttpStatus.OK);
    }
    
    @RequestMapping(value = "/programs/{code}/save", method = RequestMethod.POST)
    public ResponseEntity<String> saveProgram(@PathVariable String code, @RequestBody Program vo) {
            dummyLogin();

            AdProgram program = new AdProgramImpl();
            program.setCode(vo.getCode());
            program.setTitleMs(vo.getTitleMs());
            program.setTitleEn(vo.getTitleEn());
			program.setStatus(AdProgramStatus.get(vo.getStatus().ordinal()));
			program.setFaculty(plannerService.findFacultyById(vo.getFaculty().getId()));
			program.setLevel(plannerService.findProgramLevelById(vo.getLevel().getId()));
            plannerService.saveProgram(program);
            return new ResponseEntity<String>("Success", HttpStatus.OK);
            }

    @RequestMapping(value = "/programs/{code}", method = RequestMethod.PUT)
    public ResponseEntity<String> updateProgram(@PathVariable String code, @RequestBody Program vo) {
        dummyLogin();

        AdProgram program = plannerService.findProgramByCode(code);
        program.setCode(vo.getCode());
        program.setTitleMs(vo.getTitleMs());
        program.setTitleEn(vo.getTitleEn());
        program.setStatus(AdProgramStatus.get(vo.getStatus().ordinal()));
        plannerService.updateProgram(program);
        return new ResponseEntity<String>("Success", HttpStatus.OK);
    }

    @RequestMapping(value = "/programs/{code}", method = RequestMethod.DELETE)
    public ResponseEntity<String> removeProgram(@PathVariable String code) {
        dummyLogin();
        AdProgram program = plannerService.findProgramByCode(code);
        plannerService.removeProgram(program);
        return new ResponseEntity<String>("Success", HttpStatus.OK);
    }

    @RequestMapping(value = "/programs/{code}/activate", method = RequestMethod.GET)
    public ResponseEntity<String> activateProgram(@PathVariable String code) {
        dummyLogin();
        LOG.debug("activate program");
        AdProgram program = plannerService.findProgramByCode(code);
        program.setStatus(AdProgramStatus.ACTIVATED);
        plannerService.updateProgram(program);
        return new ResponseEntity<String>(program.getCode(), HttpStatus.OK);
    }

    @RequestMapping(value = "/programs/{code}/deactivate", method = RequestMethod.GET)
    public ResponseEntity<String> deactivateProgram(@PathVariable String code) {
        dummyLogin();
        LOG.debug("deactivate program");
        AdProgram program = plannerService.findProgramByCode(code);
        program.setStatus(AdProgramStatus.INACTIVATED);
        plannerService.updateProgram(program);
        return new ResponseEntity<String>(program.getCode(), HttpStatus.OK);
    }

    // ====================================================================================================
    // course
    // ====================================================================================================

    @RequestMapping(value = "/courses", method = RequestMethod.GET)
    public ResponseEntity<List<Course>> findCourses() {
        return new ResponseEntity<List<Course>>(plannerTransformer.toCourseVos(plannerService.findCourses(0, 100)),
                HttpStatus.OK);
    }

    @RequestMapping(value = "/courses/page/{pageNo}", method = RequestMethod.GET)
    public ResponseEntity<List<Course>> findCourses(@PathVariable Integer pageNo) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/courses/{code}", method = RequestMethod.GET)
    public ResponseEntity<Course> findCourseByCode(@PathVariable String code) throws UnsupportedEncodingException {
        return new ResponseEntity<Course>(plannerTransformer.toCourseVo(plannerService.findCourseByCode(code)),
                HttpStatus.OK);
    }

    @RequestMapping(value = "/courses/create", method = RequestMethod.POST)
    public ResponseEntity<Course> createCourse(@RequestBody Course course) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/courses/{code}/update", method = RequestMethod.POST)
    public ResponseEntity<Course> updateCourse(@PathVariable String code, @RequestBody Course course) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/courses/{code}/activate", method = RequestMethod.POST)
    public ResponseEntity<Course> activateCourse(@PathVariable String code, @RequestBody Course course) {
        throw new UnsupportedOperationException();
    }

    @RequestMapping(value = "/courses/{code}/deactivate", method = RequestMethod.POST)
    public ResponseEntity<Course> deactivateCourse(@PathVariable String code, @RequestBody Course course) {
        throw new UnsupportedOperationException();
    }

    // ====================================================================================================
    // COHORT
    // ====================================================================================================

    @RequestMapping(value = "/cohorts", method = RequestMethod.GET)
    public ResponseEntity<List<Cohort>> findCohorts() {
        return new ResponseEntity<List<Cohort>>(plannerTransformer.toCohortVos(plannerService.findCohorts("%", 0, 100)),
                HttpStatus.OK);
    }

    @RequestMapping(value = "/cohorts/{code}", method = RequestMethod.GET)
    public ResponseEntity<Cohort> findCohortByCode(@PathVariable String code) throws UnsupportedEncodingException {
        return new ResponseEntity<Cohort>(plannerTransformer.toCohortVo(plannerService.findCohortByCode(code)),
                HttpStatus.OK);
    }

    // ====================================================================================================
    // PRIVATE METHODS
    // ====================================================================================================

    private void dummyLogin() {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken("root", "abc123");
        Authentication authed = authenticationManager.authenticate(token);
        SecurityContextHolder.getContext().setAuthentication(authed);
    }
}
