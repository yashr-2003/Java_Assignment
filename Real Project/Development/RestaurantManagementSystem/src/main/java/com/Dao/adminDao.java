package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.AddRestaurantModel;
import com.model.ChoiceModel;
import com.model.MenuModel;
import com.model.TableModel;
import com.util.DBUtil;

public class adminDao 
{
	Connection cn=null;
	
	public String adminLogIn(String username,String password)
	{
		String adminname=null;
		cn=new DBUtil().getConnectionData();
		String qry="select * from admin where username=? and password=?";
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, username);
			st.setString(2, password);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				adminname=username;
			}
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return adminname;
		
	}

	public int addRestaurantData(AddRestaurantModel rmodel) 
	{
		int x=0;
		
		cn=new DBUtil().getConnectionData();
		String qry="insert into addrestaurant(restaurantname,address,city,pincode,mobileno,image) values(?,?,?,?,?,?)";
		
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, rmodel.getRestaurantname());
			st.setString(2, rmodel.getAddress());
			st.setString(3, rmodel.getCity());
			st.setString(4, rmodel.getPincode());
			st.setString(5, rmodel.getMobileno());
			st.setString(6, rmodel.getImage());
			
			System.out.println(" city is " + rmodel.getCity());
			
			x=st.executeUpdate();
		} catch (SQLException e) {
			System.out.println("error is "+e.getMessage());
		}
		
		return x;
	}

	public int tableBook(TableModel tmodel) 
	{

		int x=0;
		cn=new DBUtil().getConnectionData();
		System.out.println("Connection Eastablished");
		String qry="insert into booktable(customername,mobileno,date,people,special,restaurantname) values(?,?,?,?,?,?)";
		
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			
			st.setString(1, tmodel.getCustomername());
			st.setString(2, tmodel.getMobileno());
			st.setString(3,tmodel.getDate());
			st.setString(4,tmodel.getPeople());
			st.setString(5,tmodel.getSpecial());
			st.setString(6,tmodel.getRestaurantname());
		
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) 
		
		{

		System.out.println("Error  is +"+e.getMessage());
		}
		
		return x;
	}

	public int addMenuData(MenuModel cmodel) 
	{
		int x=0;
		cn=new DBUtil().getConnectionData();
		String qry="insert into addmenu(foodname,price,description,image,restaurantid) values(?,?,?,?,?)";
		
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, cmodel.getFoodname());
			st.setString(2, cmodel.getPrice());
			st.setString(3, cmodel.getDescription());
			st.setString(4, cmodel.getImage());
			st.setInt(5, cmodel.getRestaurantid());
			
			
			x=st.executeUpdate();
		} catch (SQLException e) 
		
		{
			System.out.println("error is "+e.getMessage());
		}
		
		return x;
	}
	
	public int addChoiceData(ChoiceModel cmodel) 
	{
		int x=0;
		cn=new DBUtil().getConnectionData();
		String qry="insert into choice(cname,price,description,image,restaurantid) values(?,?,?,?,?)";
		
		try 
		{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, cmodel.getCname() );
			st.setString(2, cmodel.getPrice());
			st.setString(3, cmodel.getDescription());
			st.setString(4, cmodel.getImage());
			st.setInt(5, cmodel.getRestaurantid());
			
			x=st.executeUpdate();
		} catch (SQLException e) 
		
		{
			System.out.println("error is "+e.getMessage());
		}
		
		return x;
	}
}
