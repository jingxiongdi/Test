package com.exam.vo;

import java.io.PrintWriter;
import java.sql.*;

import com.exam.database.ConnectionManager;
import com.exam.vo.Users;

public class UserManage {

     
	public void adduser(Users user) //���?��
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="insert into userinfo(id,username,password,sex,tel,email,score,role)values(?,?,?,?,?,?,?,?)";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,user.getId());
			psm.setString(2,user.getName());
			psm.setString(3,user.getPassword());
			psm.setString(4, user.getSex());
			psm.setString(5, user.getTel());
			psm.setString(6, user.getEmail());
			psm.setInt(7,user.getScore());
			
			psm.setString(8,"s");
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	public void addNewuser(Users user) //���?��
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="insert into userinfo(id,username,password,sex,tel,email,score,role)values(?,?,?,?,?,?,?,?)";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,user.getId());
			psm.setString(2,user.getName());
			psm.setString(3,user.getPassword());
			psm.setString(4, user.getSex());
			psm.setString(5, user.getTel());
			psm.setString(6, user.getEmail());
			psm.setInt(7,user.getScore());
			
			psm.setString(8,user.getSort());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	public void deleteuser(Users user) //ɾ����
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="delete from userinfo where username=?";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,user.getName());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	
	public void selectuser(Users user) //ɾ����
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="select * from userinfo where username=?";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,user.getName());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	
	public void deleteAlluser(Users user,String allid) //ɾ����
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="delete from userinfo where username in ("+  allid  +")";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,user.getName());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	
	public void edituser(Users user,String nname,String npass,String nid) //�޸Ŀ���
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="update userinfo set username = ?,password = ?,id = ? where username = ?";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,nname);
			psm.setString(2,npass);
			psm.setString(3,nid);
			psm.setString(4,user.getName());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	public void setId(Users user,int id)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set id = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,id);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setName(Users user,String name)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set username = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,name);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setPassword(Users user,String newpassword)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set password = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,newpassword);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setTel(Users user,String tel)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set tel = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,tel);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setEmail(Users user,String email)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set email = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,email);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setScore(Users user,int score)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set score = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,score);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setSort(Users user,String sort)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set password = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,sort);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setSex(Users user,String sex)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set sex = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,sex);
			psm.setString(2,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setUserInfo(Users user,int id,String tel,String email)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set id = ?,tel = ?,email = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,id);
			psm.setString(2,tel);
			psm.setString(3,email);
			psm.setString(4,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setUserInfoAll(Users user,int id,String username,String password,String sex,String tel,String email,int score,String sort)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set id = ?,username = ?,password = ?,sex = ?,tel = ?,email = ?,score = ?,role = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,id);
			psm.setString(2,username);
			psm.setString(3,password);
			psm.setString(4,sex);
			psm.setString(5,tel);
			psm.setString(6,email);
			psm.setInt(7,score);
			psm.setString(8,sort);
			psm.setString(9,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
	public void setUserInfoAllNoId(Users user,String username,String password,String sex,String tel,String email,int score,String sort)
	{

		Connection conn = ConnectionManager.getConnection();
		String sql = "update userinfo set username = ?,password = ?,sex = ?,tel = ?,email = ?,score = ?,role = ? where username = ?";	
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1,username);
			psm.setString(2,password);
			psm.setString(3,sex);
			psm.setString(4,tel);
			psm.setString(5,email);
			psm.setInt(6,score);
			psm.setString(7,sort);
			psm.setString(8,user.getName());
			psm.execute();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		
		
	}
public boolean userIsExist(String username){
		
		Connection conn = ConnectionManager.getConnection();
		
		String sql = "select * from userinfo where username = ?";
		try {
			
			PreparedStatement ps = conn.prepareStatement(sql);
	
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			if(!rs.next()){
				
				return true;
			}
			
			rs.close();
			
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
		
			ConnectionManager.closeConnection(conn);
		}
		return false; 
	}
}