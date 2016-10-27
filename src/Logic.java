import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author Anirudh
 *
 */
public class Logic {
	/**
	 * Connection Element
	 */
	protected Database database;
	
	/**
	 * Logic Class Constructor
	 */
	public Logic()
	{
		database = new Database("anirudh.ddns.net", 3306, "project_humber", "nirav", "nish8099");
	}
	/**
	 * This Method returns authentication result. It requires username and passowrd and tells if the user exists or not
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	public boolean authenticate(String username, String password) throws Exception
	{
		String uname = username.trim().toUpperCase().toString();
		String pass = password.trim().toUpperCase().toString();
		try
		{
			String query = String.format(Query.AUTHENTICATE.toString(), uname, pass);
			ArrayList<HashMap<String,String>> data = database.execute(query);
			if(data.isEmpty())
			{
				throw new Exception("No user found with that username!");
			}
			else if(data.size() == 1)
			{
				return true;
			}
			else
			{
				for(int i = 0 ; i < data.size() ; i++)
				{
					if(data.get(i).get("USERNAME").equals(uname) && data.get(i).get("PASSWORD").equals(pass))
					{
						return true;
					}
				}
			}
		}
		catch(Exception ex)
		{
			throw ex;
		}
		return false;
	}
	/**
	 * This Method get all info such as username, role, password, firstname and lastname
	 * @param username
	 * @return HashMap<String,String>
	 * @throws Exception
	 */
	public HashMap<String, String> get_info(String username) throws Exception
	{
		HashMap<String, String> map = new HashMap<String,String>();
		String uname = username.trim().toUpperCase().toString();
		try
		{
			String query = String.format(Query.SELECT_ALL_FROM.toString(), "USER", uname);
			ArrayList<HashMap<String,String>> data = database.execute(query);
			if(data.isEmpty())
			{
				throw new Exception("No user found with that username!");
			}
			else
			{
				for(int i = 0 ; i < data.size() ; i++)
				{
					if(data.get(i).get("USERNAME").equals(uname))
					{
						map.put("USERNAME", data.get(i).get("USERNAME"));
						map.put("ROLE", data.get(i).get("ROLE"));
						map.put("PASSWORD", data.get(i).get("PASSWORD"));
						
						/*Getting First Name and Last Name*/
						query = String.format(Query.SELECT_ALL_FROM.toString(), data.get(i).get("ROLE") , uname);
						data = database.execute(query);
						if(!data.isEmpty())
						{
							for(int j=0; j < data.size(); j++)
							{
								if(data.get(i).get("USERNAME").equals(uname))
								{
									map.put("FIRSTNAME", data.get(i).get("FIRSTNAME"));
									map.put("LASTNAME", data.get(i).get("LASTNAME"));
									return map;
								}
							}
						}
					}
				}
			}
		}
		catch(Exception ex)
		{
			throw ex;
		}
		return null;
	}
	
}
