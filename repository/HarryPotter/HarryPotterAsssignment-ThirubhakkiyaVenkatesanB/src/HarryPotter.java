import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

public class HarryPotter {
	public static void belongtoGryffindorhouse(Connection c ) throws SQLException {
		Statement st = c.createStatement();
		ResultSet rs = st.executeQuery("select Name,house, Role,Status,Dies from HarryPotterTable where House= 'Gryffindor'");
		while(rs.next())
		System.out.println(rs.getString(1)+ " "+rs.getString(2)+ " "+rs.getString(3)+ " "+rs.getString(4)+ " "+rs.getString(5));
		
		
		
		
	}
	public static void group(Connection c ) throws SQLException {
		Statement st = c.createStatement();
		ResultSet rs = st.executeQuery("select Name, House ,Role,Status,Dies from HarryPotterTable where Dies = 'Yes'");
		
		while(rs.next())
		System.out.println(rs.getString(1)+ " "+rs.getString(2)+ " "+rs.getString(3)+ " "+rs.getString(4)+ " "+" "+rs.getString(5));
		
		
		
		
	}
	public static void family(Connection c ) throws SQLException {
		Statement st = c.createStatement();
		ResultSet rs = st.executeQuery("select Name, House ,Role,Status,Dies from HarryPotterTable where Status = 'Family' ");
		while(rs.next())
		System.out.println(rs.getString(1)+ " "+rs.getString(2)+ " "+rs.getString(3)+ " "+rs.getString(4)+ " "+" "+rs.getString(5));
		
		
		
		
	}
	public static void Faculty(Connection c ) throws SQLException {
		Statement st = c.createStatement();
		ResultSet rs = st.executeQuery("select Name, House ,Role,Status,Dies from HarryPotterTable where     Role = 'Faculty' and Dies = 'Yes'");
		while(rs.next())
		System.out.println(rs.getString(1)+ " "+rs.getString(2)+ " "+rs.getString(3)+ " "+rs.getString(4)+ " "+" "+rs.getString(5));
		
		
		
		
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Class loaded");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/HarryPotterSeries","root","subithiru07");
		if(c== null)
		{
			System.out.println("connection faild");
		}
		else if(c!=null) {
			System.out.println("connection done");
		}
		
		
		
		PreparedStatement ps = c.prepareStatement("insert into HarryPotterTable values(?,?,?,?,?)");
		/*ps.setString(1, "Lily Potter");
		ps.setString(2, "Gryffindor");
		ps.setString(3, "Student");
		ps.setString(4, "Family");
		ps.setString(5, "Yes");
		ps.executeUpdate();
		System.out.println("added");*/
		belongtoGryffindorhouse( c);
		System.out.println("***************************************************************************");
		
		group(c);
		System.out.println("***************************************************************************");
		
		
		family(c);
		System.out.println("***************************************************************************");
		Faculty(c);
		System.out.println("***************************************************************************");
	}

}
