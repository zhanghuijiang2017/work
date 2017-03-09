package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.hygj.zhj.db.DBhelp;

public class test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Connection conn=DBhelp.getconnection();
		System.out.println(conn);
		try {
			PreparedStatement pstmt=conn.prepareStatement("select * from emp");
			ResultSet rs=pstmt.executeQuery();
			System.out.println(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
