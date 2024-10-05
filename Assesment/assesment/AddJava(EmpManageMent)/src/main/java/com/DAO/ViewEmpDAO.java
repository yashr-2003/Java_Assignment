package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Model.EmpModel;
import com.Util.DBUtil;



public class ViewEmpDAO 
{	
	Connection cn=null;
	
	public ArrayList<EmpModel> viewEmp()
	{

		Connection cn=new DBUtil().getConnectionData();
		String qry="select * from addemp";
		ArrayList<EmpModel> emp=new ArrayList();
		
		try
		{
			PreparedStatement st=cn.prepareStatement(qry);
			ResultSet rs=st.executeQuery();
			
			
			while(rs.next())
			{
				
				EmpModel model1=new EmpModel();
				model1.setEmpid(rs.getInt(1));
				model1.setFirstname(rs.getString(2));
				model1.setLastname(rs.getString(3));
				model1.setEmail(rs.getString(4));
				model1.setMobile(rs.getString(5));
				model1.setAddress(rs.getString(6));
				model1.setGender(rs.getString(7));
				model1.setPassword(rs.getString(8));
				model1.setCpassword(rs.getString(9));
				emp.add(model1);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return emp;
		
	}
	public EmpModel editRecord(int empid)
	{

		Connection cn=new DBUtil().getConnectionData();
		String qry="select * from addemp where empid=?";
		EmpModel model2=new EmpModel();
		try
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1,empid);
			ResultSet rs=st.executeQuery();
			
			
			if(rs.next())
			{
				model2.setEmpid(rs.getInt(1));
				model2.setFirstname(rs.getString(2));
				model2.setLastname(rs.getString(3));
				model2.setEmail(rs.getString(4));
				model2.setMobile(rs.getString(5));
				model2.setAddress(rs.getString(6));
				model2.setGender(rs.getString(7));
				model2.setPassword(rs.getString(8));
				model2.setCpassword(rs.getString(9));
				
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return model2;
	}
	
	public int updateEmp(EmpModel umodel)
	{
		int x=0;
		Connection cn=new DBUtil().getConnectionData();
		String qry="update addemp set firstname=?,lastname=?,email=?,mobile=?,address=?,gender=?,password=?,cpassword=? where empid=?;";
		
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1,umodel.getFirstname());
			st.setString(2,umodel.getLastname());
			st.setString(3, umodel.getEmail());
			st.setString(4,umodel.getMobile());
			st.setString(5,umodel.getAddress());
			st.setString(6,umodel.getGender());
			st.setString(7,umodel.getPassword());
			st.setString(8,umodel.getCpassword());
			st.setInt(9,umodel.getEmpid());
			
			x=st.executeUpdate();
			cn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
		
	}
	public int deleteRecord(int empid)
	{
		int x=0;
		Connection cn=new DBUtil().getConnectionData();
		String qry="delete from addemp where empid=?";
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, empid);
			x=st.executeUpdate();
			cn.close();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return x;
		
	}
}
