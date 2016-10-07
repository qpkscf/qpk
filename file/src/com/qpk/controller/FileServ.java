package com.qpk.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileServ extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FileServ() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.获取上传数据
		InputStream is = request.getInputStream();
		// 2.上传文件的地址
		try {
			FileOutputStream fos = new FileOutputStream("e:\\test.txt");
			byte[] buffer = new byte[8192];
			int count = 0;
			while ((count = is.read(buffer)) > 0) {
				fos.write(buffer, 0, count);
			}
			fos.close();
			request.setAttribute("message", "文件上传成功！");

		} catch (Exception e) {
			request.setAttribute("message", "文件上传失败！");
		}
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}