package my.edu.umk.pams.academic.web.module.planner.vo;

/**
 * @author PAMS
 */
public enum AcademicSemester  {
	
	SEMESTER_1, // 0
	SEMESTER_2, // 1
	SEMESTER_3, // 2
	SEMESTER_4, // 3
	SEMESTER_5, // 4
	SEMESTER_6, // 5
	SEMESTER_7, // 6
	SEMESTER_8, // 7
	SEMESTER_9, // 8
	SEMESTER_10, // 9
	SEMESTER_11, // 10
	SEMESTER_12, // 11
	SEMESTER_13, // 12
	SEMESTER_14, // 13
	SEMESTER_15, // 14
	SEMESTER_16, // 15
	SEMESTER_17, // 16
	SEMESTER_18, // 17
	SEMESTER_19, // 18
	SEMESTER_20; // 19
	
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
    public static AcademicSemester get(int index){
        return values()[index];
    }
}
