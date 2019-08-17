package com.imooc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SampleServlet extends HttpServlet {

    public SampleServlet(){
        System.out.println("正在创建SampleServlet对象");
    }


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String mobile = req.getParameter("mobile");
        String sex = req.getParameter("sex");
        String[] specs = req.getParameterValues("spec");
        String specsStr = "";
        for(String spec: specs){
            specsStr += "<h2>"+ spec +"</h2>";
        }

        String html = "<h1>"+ name +"</h1>"+
                "<h1>"+ mobile +"</h1>"+
                "<h1>"+ sex +"</h1>"+
                specsStr;
        System.out.println("回传给前台页面的网页："+html);
        PrintWriter out = resp.getWriter();
        out.println(html);

    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("正在初始化SampleServlet对象");
    }

    @Override
    public void destroy() {
        System.out.println("正在销毁SampleServlet对象");
    }




}
