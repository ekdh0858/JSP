package mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

// DAO -> Data Access Object
// DB에 쿼리를 실행하고 쿼리 실행 결과를 받아오는 객체

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
			System.out.println("Connectin Pool 관련 예외 발생");
		} 
		return conn;
		
	}
	
	public boolean insertMember(memberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		// insert 성공 실패 여부
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
			System.out.println("insert 중 예외 발생");
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
