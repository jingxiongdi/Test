package com.exam.vo;

import java.io.PrintWriter;
import java.sql.*;

import com.exam.database.ConnectionManager;
import com.exam.vo.Subject;

public class SubjectManage {
     /**
      * ����  ������������� ɾ�� �޸�
      */
	public void addsubject(Subject subject) //��������
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="insert into subject(id,main,A,B,C,D,answer)values(?,?,?,?,?,?,?)";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,subject.getId());
			psm.setString(2,subject.getMain());
			psm.setString(3,subject.getA());
			psm.setString(4,subject.getB());
			psm.setString(5,subject.getC());
			psm.setString(6,subject.getD());
			psm.setString(7,subject.getAnswer());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	public void deletesubject(Subject subject) //ɾ������
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="delete from subject where  id=?";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1,subject.getId());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	public void editsubject(Subject subject,int id, String nmain,String nA,String nB,String nC,String nD,String nAnswer) //�޸�����
	{

		Connection conn = ConnectionManager.getConnection();
		String sql ="update subject set id = ?, main = ?,A = ?,B = ?,C = ?,D = ?,answer = ? where id = ?";
		PreparedStatement psm =null;
		try{
			psm = conn.prepareStatement(sql);
			psm.setInt(1, id);
			psm.setString(2,nmain);
			psm.setString(3,nA);
			psm.setString(4,nB);
			psm.setString(5,nC);
			psm.setString(6,nD);
			psm.setString(7,nAnswer);
			psm.setInt(8,subject.getId());
			psm.execute();		
			psm.close();
			
		}catch(Exception e){
		    	e.printStackTrace();
		    }
	}
	
}