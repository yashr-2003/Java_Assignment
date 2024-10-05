package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Model.EmpModel;
import com.Util.DBUtil;

public class AddEmpDAO
{
	Connection cn=null;
	
	public int addEmp(EmpModel emodel)
	{
		int x=0;
		try 
		{
		cn=new DBUtil().getConnectionData();
		String qry="insert into addemp(firstname,lastname,email,mobile,address,gender,password,cpassword) values(?,?,?,?,?,?,?,?)";
		
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1,emodel.getFirstname());
			st.setString(2,emodel.getLastname());
			st.setString(3,emodel.getEmail());
			st.setString(4,emodel.getMobile());
			st.setString(5,emodel.getAddress());
			st.setString(6,emodel.getGender());
			st.setString(7,emodel.getPassword());
			st.setString(8,emodel.getCpassword());
			
			x=st.executeUpdate();
		} catch (Exception e) {
			System.out.println("error = "+e);
		}
		
		return x;
		
	}
}
