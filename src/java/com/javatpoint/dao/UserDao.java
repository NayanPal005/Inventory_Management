package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.User;
public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into dealership(dealer_name,dealer_id,contact,address,date) values(?,?,?,?,?)");
		ps.setString(1,u.getDealer_name());
		ps.setString(2,u.getDealer_id());
		ps.setString(3,u.getContact());
                ps.setString(4,u.getAddress());
		ps.setString(5,u.getDate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update dealership set dealer_name=?,dealer_id=?,contact=?,address=?,date=? where id=?");
		ps.setString(1,u.getDealer_name());
		ps.setString(2,u.getDealer_id());
		ps.setString(3,u.getContact());
                ps.setString(4,u.getAddress());
		ps.setString(5,u.getDate());
		ps.setInt(6,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from dealership where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from dealership");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setDealer_name(rs.getString("dealer_name"));
			u.setDealer_id(rs.getString("dealer_id"));
			u.setContact(rs.getString("contact"));
                        u.setAddress(rs.getString("address"));
			u.setDate(rs.getString("date"));			
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from dealership where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setId(rs.getInt("id"));
			u.setDealer_name(rs.getString("dealer_name"));
			u.setDealer_id(rs.getString("dealer_id"));
			u.setContact(rs.getString("contact"));
                        u.setAddress(rs.getString("address"));
			u.setDate(rs.getString("date"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
