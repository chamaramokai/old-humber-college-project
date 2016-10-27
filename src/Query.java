
public enum Query {
	AUTHENTICATE("SELECT * FROM USER WHERE USERNAME='%s' AND PASSWORD='%s'"),
	SELECT_ALL_FROM("SELECT * FROM %s WHERE USERNAME='%s'"),
	SELECT_EXAMS("SELECT * FROM EXAM_BOOKINGS INNER JOIN USER_COURSES ON EXAM_BOOKINGS.COURSE_CODE = USER_COURSES.COURSE_CODE " + "WHERE USER_COURSES.USERNAME='%s' ORDER BY EXAM_DATE")
	;

	  private final String command;

	  private Query(String command) {
	    this.command = command;
	  }

	  @Override
	  public String toString() {
	     return command;
	  }
	  
}
