package cn.hygj.zhj.entity;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.hygj.zhj.dao.baseDao;
import cn.hygj.zhj.db.DBhelp;

public class filmImpl3 implements baseDao {
	static Connection conn=null;
	static PreparedStatement pstmt=null;
	static ResultSet rs=null;
	static String page="";
	ArrayList<film> films= new ArrayList<film>();
	static int pagesize=5;
	
	
	public String getType(Object obj){
		HttpServletRequest request=(HttpServletRequest) obj;
		String type="1";
		if(request.getAttribute("type")!=null){
			type=(String) request.getAttribute("type");
			try {
				type=new String(type.getBytes("iso-8859-1"),"utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
			type="null";
		return type;
	}
	
	public String getCountry(Object obj){
		HttpServletRequest request=(HttpServletRequest) obj;
		String country="1";
		if(request.getAttribute("country")!=null){
			country=(String) request.getAttribute("country");
			try {
				country=new String(country.getBytes("iso-8859-1"),"utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
			country="null";
		return country;
	}
	
	public String getTime(Object obj){
		HttpServletRequest request=(HttpServletRequest) obj;
		String time="1";
		if(request.getAttribute("time")!=null){
			time=(String) request.getAttribute("time");	
		}
		else
			time="1";
		return time;
	}
	
	
	public int getCount(Object obj){
		String type=getType(obj);
		String country=getCountry(obj);
		String time=getTime(obj);
		int count=0;
		conn=DBhelp.getconnection();
		try {
			pstmt=conn.prepareStatement("select * from movie_film  where (?='null' or ftype like '%"+type+"%') and (?='null' or fcountry like '%"+country+"%') and (?=1 or fmtime="+time+"))");
			pstmt.setString(1, type);
			pstmt.setString(2, country);
			pstmt.setString(3, time);
			rs=pstmt.executeQuery();
			while(rs.next()){
				count++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	} 
	
	
	@Override
	public String findAll(Object obj){
		String type=getType(obj);
		String country=getCountry(obj);
		String time=getTime(obj);
		int pagenum=1;
		int count=getCount(obj);
		HttpServletRequest request=(HttpServletRequest)obj;
		HttpSession session=request.getSession();
		if(request.getAttribute("pagenum")!=null)
			pagenum=(Integer)request.getAttribute("pagenum");
		if(pagenum<=1)
			pagenum=1;
		if(pagenum>count/pagesize)
			pagenum= count%pagesize==0?count/pagesize:count/pagesize+1;
		conn=DBhelp.getconnection();
		try {
			pstmt=conn.prepareStatement("select * from (select f.*,rownum r from movie_film f where (?='null' or ftype like '%"+type+"%') and (?='null' or fcountry like '%"+country+"%') and (?=1 or fmtime='"+time+"')) where r>? and r<=?");
			pstmt.setString(1, type);
			pstmt.setString(2, country);
			pstmt.setString(3, time);
			pstmt.setInt(4,(pagenum-1)*pagesize);
			pstmt.setInt(5, pagenum*pagesize);
			rs=pstmt.executeQuery();
			film film=null;
			while(rs.next()){
				film=new film(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
				films.add(film);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("film", films);
		session.setAttribute("count", count);
		session.setAttribute("type", type);
		session.setAttribute("country", country);
		session.setAttribute("time", time);
		session.setAttribute("pagenum", pagenum);
		return page;
	}
	
	
	
	
	

	
	@Override
	public String login(Object obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String sign(Object obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insert(Object obj) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
