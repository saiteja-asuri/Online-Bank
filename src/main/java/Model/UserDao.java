package Model;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.*;

import javax.servlet.http.HttpSession;
public interface UserDao {
	public static final String dbUrl="jdbc:mysql://localhost:3306/demo";
	public static final String user="saiteja";
	public static final String pswrd="sai1234";
	public static User findUser(String email,String pin) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		User curr=new User();
		Connection conn=DriverManager.getConnection(dbUrl,user,pswrd);
		System.out.println(email);
		System.out.println(pin);
		PreparedStatement stmt=conn.prepareStatement("select * from bankuser where email=? and pin=?");
		stmt.setString(1, email);
		stmt.setString(2, pin);
		ResultSet rs=stmt.executeQuery();
		int ct=0;
		while(rs.next())
		{
			ct++;
			curr.setAcc_number(rs.getString(1));
			curr.setEmail(rs.getString(2));
			curr.setPassword(rs.getString(3));
			curr.setUserName(rs.getString(4));
			curr.setAge(rs.getInt(5));
			curr.setAddress(rs.getString(6));
			curr.setBalance(rs.getInt(7));
		}
		return ct==0 ? null : curr;
	}
	public static void createUser(String acc_number,String email,String pin,String userName,int age,String address,int balance) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(dbUrl,user,pswrd);
		PreparedStatement stmt=conn.prepareStatement("insert into bankuser values(?,?,?,?,?,?,?)");
		stmt.setString(1,acc_number);
		stmt.setString(2, email);
		stmt.setString(3, pin);
		stmt.setString(4, userName);
		stmt.setInt(5, age);
		stmt.setString(6,address);
		stmt.setInt(7, balance);
		stmt.executeUpdate();
		conn.close();
	}
}