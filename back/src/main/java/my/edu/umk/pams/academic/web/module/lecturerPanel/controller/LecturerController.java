package my.edu.umk.pams.academic.web.module.lecturerPanel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.identity.model.AdAddress;
import my.edu.umk.pams.academic.identity.model.AdStaff;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.identity.model.AdUser;
import my.edu.umk.pams.academic.identity.service.IdentityService;
import my.edu.umk.pams.academic.security.service.SecurityService;
import my.edu.umk.pams.academic.system.service.SystemService;
import my.edu.umk.pams.academic.term.service.TermService;
import my.edu.umk.pams.academic.web.module.identity.controller.IdentityTransformer;
import my.edu.umk.pams.academic.web.module.identity.vo.Staff;
import my.edu.umk.pams.academic.web.module.identity.vo.Student;
import my.edu.umk.pams.academic.web.module.term.controller.TermTransformer;
import my.edu.umk.pams.academic.workflow.service.WorkflowService;

/**
 * @author PAMS
 */
@RestController
@Transactional
@RequestMapping("/api/lecturer")
public class LecturerController {
	
    private static final Logger LOG = LoggerFactory.getLogger(LecturerController.class);

    @Autowired
    private IdentityService identityService;

    @Autowired
    private TermService termService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private WorkflowService workflowService;

    @Autowired
    private CommonService commonService;

    @Autowired
    private SystemService systemService;

    @Autowired
    private IdentityTransformer identityTransformer;
    
    @Autowired
    private TermTransformer termTransformer;

    @Autowired
    AuthenticationManager authenticationManager;
    
	// ===================================================================================================================================
	// LECTURER DASHBOARD
	// ===================================================================================================================================
	@RequestMapping(value = "/lecturerLogin", method = RequestMethod.GET)
	public ResponseEntity<Staff> findLecturerByUser() {
		// Get Current User
		AdUser user = securityService.getCurrentUser();

		AdStaff lecturer = null;

		if (user.getActor() instanceof AdStaff)
			lecturer = (AdStaff) user.getActor();
		if (null == lecturer)
			throw new IllegalArgumentException("Staff does not exists");
		LOG.debug("Lecturer:{}", lecturer.getIdentityNo());
		
		return new ResponseEntity<Staff>(identityTransformer.toStaffVo(lecturer), HttpStatus.OK);
	}

}