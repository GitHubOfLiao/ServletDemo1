<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-05-29
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>求和1~100之内</title>
</head>
<body>
    <%
    int sum = 0;
    for (int i=1; i<=100; i++){
        sum += i;
    }
    out.print("<h3>sum="+ sum +"</h3>");
    %>

</body>
</html>
