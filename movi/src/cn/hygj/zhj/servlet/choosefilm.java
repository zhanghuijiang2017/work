package cn.hygj.zhj.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class choosefilm extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String fcountry=request.getParameter("country");
		String fmtime=request.getParameter("time");
		String ftype=request.getParameter("name");
		System.out.println("-------ftype�Ƿ�Ϊ��-------");
		System.out.println(session.getAttribute(ftype));
		System.out.println(ftype.isEmpty());
		System.out.println("-------fcountry�Ƿ�Ϊ��-------");
		System.out.println(session.getAttribute(fcountry));
		System.out.println(fcountry.isEmpty());
		System.out.println("-------fmtime�Ƿ�Ϊ��-------");
		System.out.println(session.getAttribute(fmtime));
		System.out.println(fmtime.isEmpty());
	
		System.out.println("-------��ֵ��-----------");
		System.out.println(fmtime.isEmpty()==true);
		System.out.println(fcountry.isEmpty()==true);
		System.out.println(ftype.isEmpty()==true);
		System.out.println(fcountry.isEmpty()==true && fmtime.isEmpty()==true);
		System.out.println("-------��ֵ��-----------");
	}

}
