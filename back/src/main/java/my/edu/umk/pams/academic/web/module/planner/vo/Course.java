package my.edu.umk.pams.academic.web.module.planner.vo;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.ObjectMapper;
import my.edu.umk.pams.academic.web.module.core.vo.MetaObject;

import java.io.IOException;

/**
 * @author PAMS
 */
public class Course extends MetaObject {
    private String code;
    private String titleMs;
    private String titleEn;
    private Integer credit;
    private String description;
    private Faculty faculty;
    private Course course;
	private CourseStatus status;
	public AcademicClassification classification;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitleMs() {
        return titleMs;
    }

    public void setTitleMs(String titleMs) {
        this.titleMs = titleMs;
    }

    public String getTitleEn() {
        return titleEn;
    }

    public void setTitleEn(String titleEn) {
        this.titleEn = titleEn;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public AcademicClassification getClassification() {
		return classification;
    }

    public void setClassification(AcademicClassification classification) {
        this.classification = classification;
    }

    public Faculty getFaculty() {
        return faculty;
    }

    public void setFaculty(Faculty faculty) {
        this.faculty = faculty;
    }
    
    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public CourseStatus getStatus() {
 		return status;
 	}

 	public void setStatus(CourseStatus status) {
 		this.status = status;
 	}

    @JsonCreator
    public static Course create(String jsonString) {
        Course o = null;
        try {
            ObjectMapper mapper = new ObjectMapper();
            o = mapper.readValue(jsonString, Course.class);
        } catch (IOException e) {
            // handle
        }
        return o;
    }

}
