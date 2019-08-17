<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-03
  Time: 00:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试案例二</title>
</head>
<body>
    <%
        int x=-5, y;
        if(x < 0){
            y = -1;
            out.println("<div>当x<0时，输出</div>");
            out.println("<div>x="+ x +"</div>");
            out.println("<div>y="+ y +"</div>");
        }else if (x == 0){
            y = 0;
            out.println("<div>当x=0时，输出</div>");
            out.println("<div>x="+ x +"</div>");
            out.println("<div>y="+ y +"</div>");
        }else{
            y=1;
            out.println("<div>当x>0时，输出</div>");
            out.println("<div>x="+ x +"</div>");
            out.println("<div>y="+ y +"</div>");
        }
    %>

</body>
</html>
