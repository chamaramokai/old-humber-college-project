
public class Database {
	protected final String conn_string;
	
	public Database(String host, int port, String database, String username, String password)
	{
		StringBuilder sb = new StringBuilder();
        sb.append("jdbc:mysql://").append(host.trim()).append(":").append(port).append("/").append(database.trim()).append("?user=").append(username.trim()).append("&password=").append(password.trim());
        conn_string = sb.toString();
	}
	
	
}
