package DAO;

import java.sql.*;

import com.model.UserModel;

public class AddRecord 
{

	public int insertRecord(UserModel umodel)
	{
		int x=0;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mps","root","");
				String qry="insert into user(firstname,lastname,email,mobile) values(?,?,?,?)";
				PreparedStatement st=cn.prepareStatement(qry);
				st.setString(1,umodel.getFirstname());
				st.setString(2, umodel.getLastname());
				st.setString(3,umodel.getEmail());
				st.setInt(4, umodel.getMobile());
				x=st.executeUpdate();
				cn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return x;
	}

	public String MsgSend(String to) 
	{
		String firstname=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mps","root","");
		String qry="select firstname from mps where email=?";
		PreparedStatement st=cn.prepareStatement(qry);
		st.setString(1,to);
		ResultSet rs=st.executeQuery();
		
		if(rs.next())
		{
			firstname=rs.getString(1);
		}
		cn.close();
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return firstname;
	}
	
}
