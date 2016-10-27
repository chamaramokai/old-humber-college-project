
public enum Query {
	AUTHENTICATE("SELECT * FROM USER WHERE USERNAME='%s' AND PASSWORD='%s'"),
	SELECT_ALL_FROM("SELECT * FROM %s WHERE USERNAME='%s'");
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
