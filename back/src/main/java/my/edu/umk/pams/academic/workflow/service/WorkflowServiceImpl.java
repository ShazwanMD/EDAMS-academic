package my.edu.umk.pams.academic.workflow.service;

import my.edu.umk.pams.academic.core.model.AdDocument;
import my.edu.umk.pams.academic.security.service.SecurityService;
import my.edu.umk.pams.academic.util.Util;
import my.edu.umk.pams.academic.workflow.integration.registry.DocumentHandlerRegistry;
import org.activiti.engine.*;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.apache.commons.lang.Validate;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PreDestroy;
import java.util.List;
import java.util.Map;

/**
 * @author canang technologies
 * @since 11/2/2016.
 */
@Transactional
@Service("workflowService")
public class WorkflowServiceImpl implements WorkflowService {

    private static final Logger log = LoggerFactory.getLogger(WorkflowServiceImpl.class);

    private static final String WILDCARD = "%";
    @Autowired
    protected SessionFactory sessionFactory;
    @Autowired
    protected ProcessEngine processEngine;
    // WORKFLOW
    @Autowired
    protected RuntimeService runtimeService;
    @Autowired
    protected TaskService taskService;
    @Autowired
    protected IdentityService identityService;
    @Autowired
    protected HistoryService historyService;
    @Autowired
    protected RepositoryService repositoryService;
    @Autowired
    protected SecurityService securityService;
    @Autowired
    private DocumentHandlerRegistry registry;
    @Autowired
    private ApplicationContext context;

    // ==================================================================================================== //
    // WORKFLOW
    // ==================================================================================================== //

    @PreDestroy
    public void preDestroy() {
        processEngine.close();
    }

    @Override
    public void processWorkflow(AdDocument document, Map<String, Object> variables) {
        registry.process(document, variables);
    }


    /**
     * get variable from process
     *
     * @param executionId
     * @return
     */
    public Map<String, Object> getVariables(String executionId) {
        return runtimeService.getVariables(executionId);
    }

    /**
     * findAddresses task given task id
     *
     * @param taskId task id
     * @return single result
     */
    public Task findTask(String taskId) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskId(taskId);
        return taskQuery.singleResult();
    }

    /**
     * findAddresses task given variable and value
     *
     * @param variable var name
     * @param value    value
     * @return single result
     */
    public Task findTaskByVariable(String variable, Object value) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.processVariableValueEquals(variable, value);
        return taskQuery.singleResult();
    }

    /**
     * findAddresses tasks per taskname
     *
     * @param taskName
     * @return
     */
    public List<Task> findTasks(String taskName) {
        log.debug("finding assigned task for user: " + securityService.getCurrentUser().getName());
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskName(taskName);
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.list();
    }

    /**
     * @param task
     * @return
     */
    public List<IdentityLink> getIdentityLinksForTask(Task task) {
        return taskService.getIdentityLinksForTask(task.getId());
    }


    /**
     * findAddresses task
     *
     * @return
     */
    public List<Task> findAssignedTasks(String taskPrefix) {
        log.debug("finding assigned task for user: " + securityService.getCurrentUser().getName());
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskNameLike(taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.list();
    }

    /**
     * findAddresses assigned task
     *
     * @param taskPrefix
     * @param offset
     * @param limit
     * @return
     */
    public List<Task> findAssignedTasks(String taskPrefix, Integer offset, Integer limit) {
        log.debug("finding assigned task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.listPage(offset, limit);
    }

    @Override
    public List<Task> findAssignedTasks(String filter, String taskPrefix, Integer offset, Integer limit) {
        log.debug("finding assigned task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        // TODO: taskQuery.processVariableValueLike(name, WILDCARD + value + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.listPage(offset, limit);
    }

    public List<Task> findAssignedTasks(String name, String value, String taskPrefix, Integer offset, Integer limit) {
        log.debug("finding assigned task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.processVariableValueLike(name, WILDCARD + value + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.listPage(offset, limit);
    }

    /**
     * findAddresses pooled task
     *
     * @param taskPrefix
     * @return
     */
    public List<Task> findPooledTasks(String taskPrefix) {
        log.debug("finding pooled task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.list();
    }

    /**
     * findAddresses pooled task
     *
     * @param taskPrefix
     * @param offset
     * @param limit
     * @return
     */
    public List<Task> findPooledTasks(String taskPrefix, Integer offset, Integer limit) {
        log.debug("finding pooled task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.listPage(offset, limit);
    }

    @Override
    public List<Task> findPooledTasks(String filter, String taskPrefix, Integer offset, Integer limit) {
        log.debug("finding pooled task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        // TODO: taskQuery.processVariableValueLike(name, WILDCARD + value + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.listPage(offset, limit);
    }

    public List<Task> findPooledTasks(String name, String value, String taskPrefix, Integer offset, Integer limit) {
        log.debug("finding pooled task for user: " + securityService.getCurrentUser().getName());
        log.debug("task prefix: " + taskPrefix);
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.processVariableValueLike(name, WILDCARD + value + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        taskQuery.orderByTaskCreateTime();
        taskQuery.desc();
        return taskQuery.listPage(offset, limit);
    }

    public Integer countAssignedTask(String taskPrefix) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        return (int) taskQuery.count();
    }

    @Override
    public Integer countAssignedTask(String filter, String taskPrefix) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        // TODO: taskQuery.processVariableValueLike(param, WILDCARD + value + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        return (int) taskQuery.count();
    }

    public Integer countAssignedTask(String param, String value, String taskPrefix) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.processVariableValueLike(param, WILDCARD + value + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskAssignee(securityService.getCurrentUser().getName());
        return (int) taskQuery.count();
    }

    public Integer countPooledTask(String taskPrefix) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        return (int) taskQuery.count();
    }

    @Override
    public Integer countPooledTask(String filter, String taskPrefix) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        // TODO: taskQuery.processVariableValueLike(param, WILDCARD + filter + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        return (int) taskQuery.count();
    }

    /**
     * count pooled task
     *
     * @param filter
     * @param taskPrefix
     * @return
     */
    public Integer countPooledTask(String param, String filter, String taskPrefix) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        taskQuery.processVariableValueLike(param, WILDCARD + filter + WILDCARD);
        taskQuery.taskNameLike(WILDCARD + taskPrefix + WILDCARD);
        taskQuery.taskCandidateUser(securityService.getCurrentUser().getName());
        return (int) taskQuery.count();
    }

    /**
     * assign task to user
     *
     * @param task
     */
    public void claimTask(Task task) {
        Validate.notNull(task, "Task cannot be null");
        log.debug("claiming for user: " + securityService.getCurrentUser().getName());
        taskService.claim(task.getId(), securityService.getCurrentUser().getName());
    }

    /**
     * release task to user
     *
     * @param task
     */
    public void releaseTask(Task task) {
        Validate.notNull(task, "Task cannot be null");
        log.debug("releasing for user: " + securityService.getCurrentUser().getName());
        taskService.claim(task.getId(), null);
    }

    /**
     * assign task to user
     *
     * @param task
     */
    public void stealTask(Task task) {
        Validate.notNull(task, "Task cannot be null");
        log.debug("stealing for user: " + securityService.getCurrentUser().getName());
        taskService.claim(task.getId(), securityService.getCurrentUser().getName());
    }

    /**
     * assign task to user
     *
     * @param task
     * @return
     */
    public void assignTask(Task task) {
        Validate.notNull(task, "Task cannot be null");
        log.debug("assigning for user: " + securityService.getCurrentUser().getName());
        taskService.setAssignee(task.getId(), securityService.getCurrentUser().getName());
    }

    /**
     * assign task to user
     *
     * @param task
     * @param username
     * @return
     */
    public void assignTask(Task task, String username) {
        Validate.notNull(task, "Task cannot be null");
        taskService.setAssignee(task.getId(), username);
    }

    /**
     * complete this task
     *
     * @param task
     */
    public void completeTask(Task task) {
        Validate.notNull(task, "Task cannot be null");
        log.debug("test 1 {}", task);
        taskService.complete(task.getId());
    }

    /**
     * complete this task
     *
     * @param task
     * @param variables
     */
    public void completeTask(Task task, Map<String, Object> variables) {
        Validate.notNull(task, "Task cannot be null");
        log.debug("test 2 {}", task);
        taskService.complete(task.getId(), variables);
    }
}
