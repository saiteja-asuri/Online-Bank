package Model;
import java.sql.CallableStatement;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Date;

public interface Credit extends UserDao{
	public static void setHistory(User userObj,int amount) throws ClassNotFoundException, SQLException
	{
		Date date=new Date();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(dbUrl,user,pswrd);
		PreparedStatement pstmt=conn.prepareStatement("insert into Transactions values(?,?,?)");
		pstmt.setString(1,userObj.getAcc_number());
		pstmt.setString(2, date.toString());
		pstmt.setString(3, "+"+Integer.toString(amount));
		pstmt.executeUpdate();
		conn.close();
	}
	public static void creditAmount(User userObj,int amount) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(dbUrl,user,pswrd);
		CallableStatement cstmt= conn.prepareCall("{call get_balance(?,?)}");
		cstmt.setString(1, userObj.getEmail());
		cstmt.registerOutParameter(2, Types.INTEGER);
		cstmt.execute();
		int res=cstmt.getInt(2);
		PreparedStatement pstmt=conn.prepareStatement("update bankuser set balance=? where email=?");
		pstmt.setInt(1, res+amount);
		userObj.setBalance(res+amount);
		pstmt.setString(2, userObj.getEmail());
		pstmt.executeUpdate();
		conn.close();
		setHistory(userObj,amount);
	}
}
