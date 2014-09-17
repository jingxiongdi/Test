package com.exam.vo;
import java.sql.*;
import com.exam.database.ConnectionManager;
import com.exam.vo.Users;

public class SubjectExport {
     /**
      * ����  ������ĿID��ȡ��Ŀ������Ϣ
      * ����  ID ��ʾ
      * ����ֵ Subject ʵ����
      */
	public  Subject export(int ID)
	{
		Connection conn = ConnectionManager.getConnection();
		String sql = "select * from subject where id=?";
		PreparedStatement psm =null;
		ResultSet rs = null;
		Subject subject = null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,ID);
			rs = psm.executeQuery();
			if(rs.next())
			{
				subject = new Subject();
				subject.setMain(rs.getString("main"));
				subject.setA(rs.getString("A"));
				subject.setB(rs.getString("B"));
				subject.setC(rs.getString("C"));
				subject.setD(rs.getString("D"));
				subject.setAnswer(rs.getString("answer"));
				subject.setId(rs.getInt("id"));
				
			}
		}catch(Exception e){
		    	e.printStackTrace();
		    }
				return subject;
		}
			
}



