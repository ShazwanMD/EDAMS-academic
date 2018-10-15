package my.edu.umk.pams.academic.planner.model;

/**
 * @author PAMS
 */
public enum AdAcademicSemester {

	SEMESTER_1("1"), // 0
	SEMESTER_2("2"), // 1
	SEMESTER_3("3"), // 2
	SEMESTER_4("4"), // 3
	SEMESTER_5("5"), // 4
	SEMESTER_6("6"), // 5
	SEMESTER_7("7"), // 6
	SEMESTER_8("8"), // 7
	SEMESTER_9("9"), // 8
	SEMESTER_10("10"), // 9
	SEMESTER_11("11"), // 10
	SEMESTER_12("12"), // 11
	SEMESTER_13("13"), // 12
	SEMESTER_14("14"), // 13
	SEMESTER_15("15"), // 14
	SEMESTER_16("16"), // 15
	SEMESTER_17("17"), // 16
	SEMESTER_18("18"), // 17
	SEMESTER_19("19"), // 18
	SEMESTER_20("20"); // 19


	private String description;

	AdAcademicSemester(String description) {
        this.description = description;
    }

	public static AdAcademicSemester get(int index) {
		return values()[index];
	}

}
