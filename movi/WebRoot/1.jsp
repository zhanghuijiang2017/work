<%@ page language="java" import="java.util.*,java.sql.*,cn.hygj.zhj.entity.User" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body >
  
   <%
   //查询，有分页！;
   	int pagenum=1;
   	int pagesize=10;
   	request.setCharacterEncoding("utf-8");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	if(request.getParameter("pagenum")!=null){
		pagenum=Integer.parseInt(request.getParameter("pagenum"));
	}
	int count =24%pagesize==0?24/pagesize:24/pagesize+1;
	if(pagenum>=count){
	pagenum=count;
	}
	if(pagenum<=1){
	pagenum=1;
	};
	request.setAttribute("pagenum", pagenum);
	request.setAttribute("count", count);
	PreparedStatement pstmt= conn.prepareStatement("select * from(select m.*,rownum t from movie_user m) a where t>=? and t<=?");
	pstmt.setInt(1, (pagenum-1)*pagesize);
	pstmt.setInt(2,pagenum*pagesize);
	ResultSet rs=pstmt.executeQuery();
	ArrayList<User> users=new ArrayList<User>();
	User user=null;
	while(rs.next()){
		user=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
		users.add(user);
	}
	request.setAttribute("user", users);
	//request.getRequestDispatcher("3.jsp").forward(request, response);
	
    %>
   
   	<table border=1px; width=800px; bgcolor=#FFFF66;>
 	<th>编号</th><th>名字</th><th>密码</th><th>邮箱</th>
  	<br><c:forEach var="user" items="${user}" varStatus="a">
  		<tr >
  		<td>${user.userid}</td>
  		<td style="text-align:center">${user.uname}</td>
  		<td style="text-align:center">${user.upwd}</td>
  		<td style="text-align:center">${user.email}</td>
  		</tr>
  
  	</c:forEach><br></body>
  	</table>
  	<c:if test="${pagenum!=1}">
  	<a href="1.jsp?pagenum=${1}">首页</a>
  	</c:if>
  	<a href="1.jsp?pagenum=${pagenum-1}">上一页</a>
  	<a href="1.jsp?pagenum=${pagenum+1}">下一页</a>
  	<a href="1.jsp?pagenum=${count}">末页</a>
</html>
