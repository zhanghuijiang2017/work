<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<%
		request.setCharacterEncoding("gbk");
		List s=new ArrayList();
		String name = request.getParameter("uname");
		session.setAttribute("o", s);
		//if(s.size()==0){
		//	s.add(name);
		//}
		
		//for(Object a:s){
			//out.print(a);
		//}
		//2.session单个输出
		//request.setCharacterEncoding("gbk");
		//String name = request.getParameter("uname");
		//session.setAttribute("o", name);
		//out.print(session.getAttribute("o"));
 %>
<body>
</body>
</html>
