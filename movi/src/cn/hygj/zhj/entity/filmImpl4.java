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

import com.sun.net.httpserver.HttpsServer;

import cn.hygj.zhj.dao.baseDao;
import cn.hygj.zhj.db.DBhelp;

public class filmImpl4 implements baseDao {
	static Connection conn=null;
	static PreparedStatement pstmt=null;
	static ResultSet rs=null;
	static String page="";
	ArrayList<film> films= new ArrayList<film>();
	static int pagesize=5;
	/**
	 * 
	 * 发现全部电影的分页
	 */
	static public int getFilmCount(){
		int count=0;
		conn=DBhelp.getconnection();
		try {
			pstmt=conn.prepareStatement("select * from movie_film");
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
	/**
	 * 
	 * 显示详情页
	 */
	public String findById(Object obj){
		conn=DBhelp.getconnection();
		HttpServletRequest request=(HttpServletRequest) obj;
		film film=null;
		try {
			pstmt=conn.prepareStatement("select * from movie_film where fid=? ");
			pstmt.setInt(1, Integer.parseInt(request.getParameter("id")));
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				film=new film(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
			}
			else
				return "error.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession session=request.getSession();
		session.setAttribute("film", film);
		return "details1.jsp";
	}
	
	/**
	 * 
	 * 通过类型查找
	 */
	
	String ftype;
	String fcountry;
	String fmtime;
	String sql;
	public String findBy(Object obj){
		
		int count1=0;
		conn=DBhelp.getconnection();
		HttpServletRequest request=(HttpServletRequest) obj;
		HttpSession session=request.getSession();
		session.removeAttribute("count");
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		page="film2.jsp";
		
		try {
			/*System.out.println(fmtime==null);
			System.out.println(fcountry==null);
			System.out.println(ftype==null);*/
			
			fcountry=request.getParameter("country");
			//System.out.println(request.getParameter("country"));
			
			
			fmtime=request.getParameter("time");
			ftype=request.getParameter("type");
			//session.setAttribute("ftname", ftname);
			System.out.println("-------ftype是否为空-------");
			System.out.println(request.getAttribute(ftype));
			System.out.println("ftype是否是空值"+ftype.isEmpty());
			System.out.println("request.getAttribute(ftype)的值为"+request.getAttribute(ftype));
			System.out.println("session.getAttribute(ftype)的值为"+session.getAttribute(ftype));
			System.out.println(ftype.isEmpty());
			System.out.println("-------fcountry是否为空-------");
			System.out.println(request.getAttribute(fcountry));
			System.out.println("focuntry是否是空值"+fcountry.isEmpty());
			System.out.println("request.getAttribute(fcountry)的值为"+request.getAttribute(fcountry));
			System.out.println("session.getAttribute(fcountry)的值为"+session.getAttribute(fcountry));
			System.out.println("-------fmtime是否为空-------");
			System.out.println(request.getAttribute(fmtime));
			System.out.println("fmtime是否是空值"+fmtime.isEmpty());
			System.out.println("request.getAttribute(fmtime)的值为"+request.getAttribute(fmtime));
			System.out.println("session.getAttribute(fmtime)的值为"+session.getAttribute(fmtime));
		
			System.out.println("-------赋值后-----------");
			System.out.println(fmtime.isEmpty()==true);
			System.out.println(fcountry.isEmpty()==true);
			System.out.println(ftype.isEmpty()==true);
			System.out.println(fcountry.isEmpty()==true && fmtime.isEmpty()==true);
			System.out.println("-------赋值后-----------");
			if(fcountry.isEmpty()==true && fmtime.isEmpty()==true){
				ftype=new String(ftype.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where ftype like '%"+ftype+"%'";
				session.setAttribute("ftype", ftype);
				System.out.println(session.getAttribute(ftype));
				
			}
			if(ftype.isEmpty()==true && fmtime.isEmpty()==true){
				fcountry=new String(fcountry.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where fcountry like '%"+fcountry+"%'";
				session.setAttribute("fcountry", fcountry);
			}
			if(ftype.isEmpty()==true && fcountry.isEmpty()==true){
				fmtime=new String(fmtime.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where fmtime="+fmtime+"";
				session.setAttribute("fmtime", fmtime);
			}
			if(fmtime.isEmpty()==false && ftype.isEmpty()==false && fcountry.isEmpty()==true){
				ftype=new String(ftype.getBytes("iso-8859-1"),"utf-8");
				fmtime=new String(fmtime.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where ftype like '%"+ftype+"%' and fmtime="+fmtime+"";
				session.setAttribute("ftname", ftype);
				session.setAttribute("fmtime", fmtime);
			}
			if(fmtime.isEmpty()==false && ftype.isEmpty()==true && fcountry.isEmpty()==false){
				fcountry=new String(fcountry.getBytes("iso-8859-1"),"utf-8");
				fmtime=new String(fmtime.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where fcountry like '%"+fcountry+"%' and fmtime="+fmtime+"";
				session.setAttribute("fcountry", fcountry);
				session.setAttribute("fmtime", fmtime);
			}
			if(fmtime.isEmpty()==true && ftype.isEmpty()==false && fcountry.isEmpty()==false){
				ftype=new String(ftype.getBytes("iso-8859-1"),"utf-8");
				fcountry=new String(fcountry.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where ftype like '%"+ftype+"%' and fcountry like '%"+fcountry+"%'";
				session.setAttribute("ftname", ftype);
				session.setAttribute("fcountry", fcountry);
			}
			if(fmtime.isEmpty()==false && ftype.isEmpty()==false && fcountry.isEmpty()==false){
				ftype=new String(ftype.getBytes("iso-8859-1"),"utf-8");
				fcountry=new String(fcountry.getBytes("iso-8859-1"),"utf-8");
				fmtime=new String(fmtime.getBytes("iso-8859-1"),"utf-8");
				sql="select * from movie_film where ftype like '%"+ftype+"%' and fcountry like '%"+fcountry+"%' and fmtime="+fmtime+"";
				session.setAttribute("ftname", ftype);
				session.setAttribute("fcountry", fcountry);
				session.setAttribute("fmtime", fmtime);
			}
			
			
			
//			session.setAttribute("ftname", ftname);
//			

			System.out.println(fmtime.isEmpty()==true);
			System.out.println(fcountry.isEmpty()==true);
			System.out.println(ftype.isEmpty()==true);
			System.out.println(fmtime.isEmpty()==true && fcountry.isEmpty()==true);
			System.out.println(ftype.isEmpty()==true && fcountry.isEmpty()==true);
			/*System.out.println("2"+ftype+"2");
			System.out.println("2"+fmtime+"2");
			System.out.println("2"+fcountry+"2");*/	
			/*System.out.println(ftype);
			System.out.println(fcountry);
			System.out.println(fmtime);*/
			//if(fmtime){}
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			pstmt=conn.prepareStatement(sql);
			System.out.println(pstmt);
			System.out.println(sql);
			System.out.println(ftype);
			
			rs=pstmt.executeQuery();
			film film=null;
			
			while(rs.next()){
				film=new film(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
				films.add(film);
				count1++;
			}
			if(films.size()==0){
				page="noFind.jsp";
			}
			
			System.out.println(films.size());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		session.setAttribute("film", films);
		session.setAttribute("count1", count1);
	
		
		return page;
	}
	
	
	
	int count=filmImpl4.getFilmCount();
	
	public List<film> findPage(int pagenum) {
			
			conn=DBhelp.getconnection();
			/*HttpServletRequest request=(HttpServletRequest) obj;
			if(request.getAttribute("pagenum")==null)
			pagenum=1;
			else
			pagenum=(Integer)request.getAttribute("pagenum");
			if(pagenum<=1)
				pagenum=1;
			if(pagenum>count/pagesize)
				pagenum= count%pagesize==0?count/pagesize:count/pagesize+1;*/
			try {
				pstmt=conn.prepareStatement("select * from (select f.*,rownum r from movie_film f) where r>? and r<=?");
				System.out.println((pagenum-1)*pagesize);
				System.out.println(pagenum*pagesize);
				pstmt.setInt(1, (pagenum-1)*pagesize);
				pstmt.setInt(2,pagenum*pagesize);
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
			System.out.println(films.size());
		return films;
	}
	
	@Override
	public String findAll(Object obj){
	/*	conn=DBhelp.getconnection();
		
		try {
			pstmt=conn.prepareStatement("select * from movie_film ");
			rs=pstmt.executeQuery();
			film film=null;
			while(rs.next()){
				film=new film(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
				films.add(film);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		page="film2.jsp";
		HttpServletRequest request=(HttpServletRequest) obj;
		HttpSession session=request.getSession();
		int pagenum=1;
		if(request.getParameter("pagenum")!=null)
		pagenum=Integer.parseInt((request.getParameter("pagenum")));
		if(pagenum<=1)
			pagenum=1;
		if(pagenum>count/pagesize)
			pagenum= count%pagesize==0?count/pagesize:count/pagesize+1;
		
		session.setAttribute("film", findPage(pagenum));
		session.setAttribute("pagenum", pagenum);
		session.setAttribute("count", count);
		//System.out.println(films.size());
		//System.out.println(findPage(1).size());
		
		return   page;
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
		
		return null;
	}
	
	

}
