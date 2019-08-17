package com.imooc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/LoadOnServlet2", loadOnStartup = 2)
public class LoadOnServlet2 extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("执行LoadOnServlet2的service方法");
    }

    public LoadOnServlet2(){
        System.out.println("正在创建LoadOnServlet2对象");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("正在初始化LoadOnServlet2对象");
    }

    @Override
    public void destroy() {
        System.out.println("正在销毁LoadOnServlet2对象");
    }

}
