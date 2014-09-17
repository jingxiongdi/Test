package com.exam.vo;
import java.sql.*;
import com.exam.database.ConnectionManager;
import com.exam.vo.Users;
public class UserExport {
     
	public Users Login(String uname)
	{
		Connection conn = ConnectionManager.getConnection();
		String sql = "select * from userinfo where username=?";
		PreparedStatement psm =null;
		ResultSet rs = null;
		Users user = null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setString(1, uname);
			rs = psm.executeQuery();
			if(rs.next())
			{
				user = new Users();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("username"));
				user.setPassword(rs.getString("password"));		
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setEmail(rs.getString("email"));	
				user.setScore(rs.getInt("score"));
				user.setSort(rs.getString("role"));
		    }
			rs.close();
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
		finally{
				
				ConnectionManager.closeConnection(conn);
			}
			return user;
		}
		
	}
