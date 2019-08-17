<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-02
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自由编程测试案例一</title>
</head>
<body>
    <%--  方法一   --%>
    <%
        List<String> list  = new ArrayList<String>();
        list.add("JSP基础入门");
        list.add("Servlet视频详解");
        list.add("EL表达式初认识");
        list.add("JSTL标签库初识");
        int i=0;
        for(String str: list){
            out.println("<h3>第"+ ++i +"条："+ str+"</h3>");
        }
    %>

    <hr>
    <%--    方法二 --%>
    <%
        List<String> list2  = new ArrayList<String>();
        list2.add("JSP基础入门");
        list2.add("Servlet视频详解");
        list2.add("EL表达式初认识");
        list2.add("JSTL标签库初识");
        int i2=1;
        for(String str: list){
    %>
            <h3><%= "第"+ i2++ +"条：" + str  %></h3>

    <%
        }
    %>


</body>
</html>
