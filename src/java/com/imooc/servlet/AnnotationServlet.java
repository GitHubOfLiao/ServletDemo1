package com.imooc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/anno")
public class AnnotationServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");

        System.out.println("开始执行AnnotationServlet的service方法");
        PrintWriter out = resp.getWriter();
        out.println("<h3>AnnotationServlet</h3>");
    }

    public AnnotationServlet(){
        System.out.println("正在创建AnnotationServlet对象");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("正在初始化AnnotationServlet对象");
    }

    @Override
    public void destroy() {
        System.out.println("正在销毁AnnotationServlet对象");
    }



}
