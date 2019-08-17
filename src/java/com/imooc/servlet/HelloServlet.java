package com.imooc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8"); // 使服务端展示在浏览器中数据不乱码

        String name = req.getParameter("name");
        name = new String(name.getBytes("ISO8859-1"),"utf-8");
        String html = "<h1>你好，hello,"+ name +"</h1>";

        System.out.println(html);

        PrintWriter out = resp.getWriter();
        out.println(html);
    }

    public HelloServlet(){
        System.out.println("正在创建HelloServlet对象");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("正在初始化HelloServlet对象");
    }

    @Override
    public void destroy() {
        System.out.println("正在销毁HelloServlet对象");
    }
}
