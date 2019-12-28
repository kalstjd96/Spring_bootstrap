package com.jang.addrbook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

//import loginbean.LoginDataBean;

public class AddrBean {

				Connection conn = null;
				PreparedStatement pstmt = null;
				
				String jdbc_Url = "jdbc:oracle:thin:@168.126.146.45:1521:orcl";
				
				String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
				
				void connect() {
				try {
					
					Class.forName("oracle.jdbc.driver.OracleDriver");
					conn = DriverManager.getConnection(jdbc_Url, "20152518", "960320");
				
				} catch (Exception e) {
					
				e.printStackTrace();
				} 
				}
				void disconnect() {
				
					if (pstmt != null) {
						try {
							pstmt.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
					if (conn != null) {
						try {
							conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
				}
			}
				
			
public ArrayList<AddrBook> getDBList() {  //�쉶�썝紐⑸줉 由ъ뒪�듃 
	connect();
	ArrayList<AddrBook> datas = new ArrayList<AddrBook>();
	
	String sql ="SELECT * FROM table7 ORDER BY ab_id DESC";
	
	try{
		pstmt= conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			AddrBook addrbook = new AddrBook();
			
			addrbook.setAb_id(rs.getInt("ab_id"));
			addrbook.setAb_name(rs.getString("ab_name"));
			addrbook.setAb_email(rs.getString("ab_email"));
			addrbook.setAb_memo(rs.getString("ab_memo"));
			datas.add(addrbook);
			
			
			}
		rs.close();
		
			}catch(Exception e) {
			e.printStackTrace();
			}finally {
				disconnect();
		}
	return datas;
}



public boolean insertDB(AddrBook addrbook) { //�쉶�썝 媛��엯 
	connect();
	
	String sql = "INSERT INTO table7 values(ab_id_seq.nextval,?,?,?)";
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, addrbook.getAb_name());
		pstmt.setString(2, addrbook.getAb_email());
		pstmt.setString(3, addrbook.getAb_memo());
		pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
		return false;
	}
	finally {
		disconnect();
	}
	return true;
}


public AddrBook getDB(int ab_id) {  //
	connect();
	
	String sql = "SELECT * FROM table7 WHERE ab_id=?";
	AddrBook addrbook = new AddrBook();
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, ab_id);
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		addrbook.setAb_id(rs.getInt("ab_id"));
		addrbook.setAb_name(rs.getString("ab_name"));
		addrbook.setAb_email(rs.getString("ab_email"));
		addrbook.setAb_memo(rs.getString("ab_memo"));
		rs.close();
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	finally {
		disconnect();
	}
	return addrbook;
	}

public boolean updateDB(AddrBook addrbook) {  //�쉶�썝�젙蹂� �닔�젙 
	connect();
	
	String sql = "UPDATE table7 SET ab_name=?, ab_email=?,ab_memo=?"
			+ "WHERE ab_id=?";
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,  addrbook.getAb_name());
		pstmt.setString(2,  addrbook.getAb_email());
		pstmt.setString(3,  addrbook.getAb_memo());
		pstmt.setInt(4, addrbook.getAb_id());
		pstmt.executeUpdate();
	}catch (SQLException e) {
		e.printStackTrace();
		return false;
	}
	finally {
		disconnect();
	}
	return true;
}

public boolean deleteDB(int gb_id) {  //�쉶�썝�젙蹂� �궘�젣 
	connect();
	
	String sql = "DELETE FROM table7 WHERE ab_id=?";
	    	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, gb_id);
		pstmt.executeUpdate();
		
	} catch(SQLException e) {
		e.printStackTrace();
		return false;
	}finally {
		disconnect();
	}
	return true;
}




}


