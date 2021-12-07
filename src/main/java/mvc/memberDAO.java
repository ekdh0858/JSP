package mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

// DAO -> Data Access Object
// DB�� ������ �����ϰ� ���� ���� ����� �޾ƿ��� ��ü

public class memberDAO {
	public Connection getConnection() {
		Connection conn = null;
		InitialContext ic;
		try {
			ic = new InitialContext();
			
			DataSource ds = (DataSource) ic.lookup("java:comp/env/maria/mvc");
			
			conn = ds.getConnection();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			System.out.println("Connectin Pool ���� ���� �߻�");
		} 
		return conn;
		
	}
	
	public boolean insertMember(memberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		// insert ���� ���� ����
		boolean success = false;
		
		
		try {
			conn=getConnection();
			
			String sql = "INSERT INTO member(id,pw,name,mail) VALUES(?,?,?,?);";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getMail());
			
			int count = pstmt.executeUpdate();
			
			success=count==1;
			
		
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("insert �� ���� �߻�");
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			}
			
		}
		
		return success;
	}
	
	public memberDTO selectMember(String id) {
		return null;
	}
	
	public boolean updatemember(memberDTO member) {
		return false;
	}
	
	public boolean deleteMember(memberDTO member) {
		return false;
	}
}
