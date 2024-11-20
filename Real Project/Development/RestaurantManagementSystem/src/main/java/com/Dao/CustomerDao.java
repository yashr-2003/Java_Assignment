package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.RowSetInternal;

import com.model.CustomerModel;
import com.util.DBUtil;

public class CustomerDao 
{
	Connection cn=null;
	
	public int customerRegistration(CustomerModel rmodel)
	{
		int x=0;
		cn=new DBUtil().getConnectionData();
		String qry="insert into customer(firstname,lastname,address,state,city,pincode,mobile,email,password) values(?,?,?,?,?,?,?,?,?)";
		try
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1,rmodel.getFirstname());
			st.setString(2,rmodel.getLastname());
			st.setString(3, rmodel.getAddress());
			st.setString(4, rmodel.getState());
			st.setString(5, rmodel.getCity());
			st.setInt(6, rmodel.getPincode());
			st.setString(7, rmodel.getMobile());
			st.setString(8,rmodel.getEmail());
			st.setString(9,rmodel.getPassword());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			System.out.println("errrot" + e.getMessage());
		}
		
		return x;
		
	}

	public CustomerModel customerLogin(CustomerModel lmodel) 
	{
		CustomerModel model=null;
		
		cn=new DBUtil().getConnectionData();
		
		String qry="select * from customer where email=? and password=?";
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, lmodel.getEmail());
			st.setString(2, lmodel.getPassword());
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				
				model=new CustomerModel();
				model.setCustomerid(rs.getInt(1));
				model.setFirstname(rs.getString(2));
				model.setLastname(rs.getString(3));
				model.setAddress(rs.getString(4));
				model.setState(rs.getString(5));
				model.setCity(rs.getString(6));
				model.setPincode(rs.getInt(7));
				model.setMobile(rs.getString(8));
				model.setEmail(rs.getString(9));
				model.setPassword(rs.getString(10));
			}
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return model;
	}
}
