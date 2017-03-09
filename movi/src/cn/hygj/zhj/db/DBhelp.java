package cn.hygj.zhj.db;

import java.sql.*;

public class DBhelp {
	private static final String DRIVER="oracle.jdbc.driver.OracleDriver";
	private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String USERNAME="scott";
	private static final String PASSWORD="tiger";
	private static Connection conn=null;
	private static PreparedStatement pstmt=null;
	private static ResultSet rs=null;
	
	public static Connection getconnection(){
		try {
			Class.forName(DRIVER);
			conn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("未找到数据库驱动！");
		}
		return conn;
	}
	
	public static PreparedStatement pstmt(String sql){
		try {
			pstmt=conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pstmt;
		
	}
	
	public static void CloseAll(Connection conn,PreparedStatement pstmt,ResultSet rs){
		if(rs!=null)
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(pstmt!=null)
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(conn!=null)
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
