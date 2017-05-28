package my.edu.umk.pams.academic.web.module.graduation.controller;

import my.edu.umk.pams.academic.graduation.model.AdGraduationApplication;
import my.edu.umk.pams.academic.graduation.model.AdGraduationApplicationImpl;
import my.edu.umk.pams.academic.graduation.service.GraduationService;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.identity.service.IdentityService;
import my.edu.umk.pams.academic.planner.model.AdAcademicSession;
import my.edu.umk.pams.academic.planner.service.PlannerService;
import my.edu.umk.pams.academic.profile.service.ProfileService;
import my.edu.umk.pams.academic.security.integration.AdAutoLoginToken;
import my.edu.umk.pams.academic.system.service.SystemService;
import my.edu.umk.pams.academic.web.module.graduation.vo.GraduationApplication;
import my.edu.umk.pams.academic.web.module.graduation.vo.GraduationApplicationTask;
import my.edu.umk.pams.academic.workflow.service.WorkflowService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author PAMS
 */
@RestController
@RequestMapping("/api/graduation")
public class GraduationController {

    @Autowired
    private GraduationService graduationService;

    @Autowired
    private GraduationTransformer graduationTransformer;

    @Autowired
    private ProfileService profileService;

    @Autowired
    private PlannerService plannerService;

    @Autowired
    private IdentityService identityService;

    @Autowired
    private SystemService systemService;

    @Autowired
    private WorkflowService workflowService;

    @Autowired
    private AuthenticationManager authenticationManager;

    // ====================================================================================================
    // GRADUATION APPLICATION
    // ====================================================================================================

    @RequestMapping(value = "/graduationApplications", method = RequestMethod.GET)
    public ResponseEntity<List<GraduationApplication>> findGraduationApplications() {
        List<AdGraduationApplication> graduationApplications = graduationService.findGraduationApplications("%", 0, 100);
        return new ResponseEntity<List<GraduationApplication>>(graduationTransformer.toGraduationApplicationVos(graduationApplications), HttpStatus.OK);
    }

    @RequestMapping(value = "/graduationApplications/{referenceNo}", method = RequestMethod.GET)
    public ResponseEntity<GraduationApplication> findGraduationApplicationByReferenceNo(@PathVariable String referenceNo) {
        AdGraduationApplication graduationApplication = (AdGraduationApplication) graduationService.findGraduationApplicationByReferenceNo(referenceNo);
        return new ResponseEntity<GraduationApplication>(graduationTransformer.toGraduationApplicationVo(graduationApplication), HttpStatus.OK);
    }

    @RequestMapping(value = "/graduationApplications/{referenceNo}", method = RequestMethod.PUT)
    public ResponseEntity<GraduationApplication> updateGraduationApplication(@PathVariable String referenceNo, @RequestBody GraduationApplication vo) {
        AdGraduationApplication graduationApplication = (AdGraduationApplication) graduationService.findGraduationApplicationByReferenceNo(referenceNo);
        return new ResponseEntity<GraduationApplication>(graduationTransformer.toGraduationApplicationVo(graduationApplication), HttpStatus.OK);
    }

    @RequestMapping(value = "/graduationApplications/assignedTasks", method = RequestMethod.GET)
    public ResponseEntity<List<GraduationApplicationTask>> findAssignedGraduationApplications() {
        dummyLogin();
        List<Task> tasks = graduationService.findAssignedGraduationApplicationTasks(0, 100);
        return new ResponseEntity<List<GraduationApplicationTask>>(graduationTransformer.toGraduationApplicationTaskVos(tasks), HttpStatus.OK);
    }

    @RequestMapping(value = "/graduationApplications/pooledTasks", method = RequestMethod.GET)
    public ResponseEntity<List<GraduationApplicationTask>> findPooledGraduationApplications() {
        dummyLogin();
        List<Task> tasks = graduationService.findPooledGraduationApplicationTasks(0, 100);
        return new ResponseEntity<List<GraduationApplicationTask>>(graduationTransformer.toGraduationApplicationTaskVos(tasks), HttpStatus.OK);
    }

    @RequestMapping(value = "/graduationApplications/startTask", method = RequestMethod.POST)
    public void startGraduationApplicationTask(@RequestBody GraduationApplication vo) throws Exception {
        dummyLogin();

        AdAcademicSession academicSession = plannerService.findAcademicSessionById(vo.getAcademicSession().getId());
        AdStudent student = identityService.findStudentById(vo.getStudent().getId());
        AdGraduationApplication graduationApplication = new AdGraduationApplicationImpl();
        graduationApplication.setDescription(vo.getDescription());

        // todo: calculate with latest admission
        // todo: calculate with all enrollments
        graduationApplication.setCgpa(vo.getCgpa());
        graduationApplication.setCreditHour(vo.getCreditHour());
        graduationApplication.setStudent(student);
        graduationApplication.setSession(academicSession);
        graduationService.startGraduationApplicationTask(graduationApplication);
    }

    @RequestMapping(value = "/graduationApplications/viewTask/{taskId}", method = RequestMethod.GET)
    public ResponseEntity<GraduationApplicationTask> findGraduationApplicationTaskByTaskId(@PathVariable String taskId) {
        return new ResponseEntity<GraduationApplicationTask>(graduationTransformer
                .toGraduationApplicationTaskVo(
                        graduationService.findGraduationApplicationTaskByTaskId(taskId)), HttpStatus.OK);
    }

    @RequestMapping(value = "/graduationApplications/claimTask", method = RequestMethod.POST)
    public void claimGraduationApplicationTask(@RequestBody GraduationApplicationTask vo) {
        dummyLogin();
        Task task = graduationService.findGraduationApplicationTaskByTaskId(vo.getTaskId());
        workflowService.claimTask(task);
    }

    @RequestMapping(value = "/graduationApplications/completeTask", method = RequestMethod.POST)
    public void completeGraduationApplicationTask(@RequestBody GraduationApplicationTask vo) {
        dummyLogin();
        Task task = graduationService.findGraduationApplicationTaskByTaskId(vo.getTaskId());
        workflowService.completeTask(task);
    }

    // ====================================================================================================
    // PRIVATE METHODS
    // ====================================================================================================

    private void dummyLogin() {
        AdAutoLoginToken token = new AdAutoLoginToken("root");
        Authentication authed = authenticationManager.authenticate(token);
        SecurityContextHolder.getContext().setAuthentication(authed);
    }
}
