package com.lkw.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@SuppressWarnings("serial")
public class JsonServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取json格式
		String person = request.getParameter("person");
		String word = request.getParameter("word");
		//json对象
		JSONObject obj1 = JSONObject.fromObject(person);
		System.out.println(obj1.toString());
		//json数组
		JSONArray array = JSONArray.fromObject(word);
		Object a = array.getJSONObject(0).get("a");
		System.out.println(array);
		System.out.println(array.get(1));
		System.out.println(a);
		//传到jsp的方式
		response.setContentType("application/x-json"); 
		response.setCharacterEncoding("utf-8"); 
		PrintWriter out = response.getWriter(); 
		JSONObject obj2 = new JSONObject();
			obj2.put("a","11");
			obj2.put("b","22");
			obj2.put("c","33");
			obj2.put("d","44");
		out.print(obj2);
		out.flush();
		out.close();
    }  
}

