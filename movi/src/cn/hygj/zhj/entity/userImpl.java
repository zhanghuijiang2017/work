package cn.hygj.zhj.entity;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.hygj.zhj.dao.baseDao;
import cn.hygj.zhj.db.DBhelp;

public class userImpl implements baseDao {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String page="";
	boolean flag=false;

	@Override
	public String login(Object obj) {
		String nickname="";
		conn=DBhelp.getconnection();
		HttpServletRequest request=(HttpServletRequest)obj;
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			pstmt=conn.prepareStatement("select * from movie_user where uname=? and upwd=?");
			pstmt.setString(1, request.getParameter("uname"));
			pstmt.setString(2,request.getParameter("upwd"));
			rs=pstmt.executeQuery();
			if(rs.next()){
			nickname=rs.getString("uname");
			page="home.jsp";
			}
			else
			page="error.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			HttpSession session = request.getSession();
			session.setAttribute("nickname", nickname);
			filmImpl film=new filmImpl();
			film.findAll(request);
			return page;
	}

	@Override
	public String sign(Object obj) {
		conn=DBhelp.getconnection();
		HttpServletRequest request=(HttpServletRequest)obj;
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pstmt=conn.prepareStatement("insert into movie_user values(seq_movie_user.nextval,?,?,?)");
			pstmt.setString(1, request.getParameter("uname"));
			pstmt.setString(2,request.getParameter("upwd"));
			pstmt.setString(3,request.getParameter("email"));
			flag= pstmt.executeUpdate()>0?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(flag==true)
		page="login.jsp";
		else
		page="error.jsp";
		return page;
	}

	
	
	@Override
	public String insert(Object obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findAll(Object obj) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
