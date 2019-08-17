<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-05-30
  Time: 00:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>统计1~1000之内的质数</title>
</head>
<body>
    <%
    int count = 0;
    for(int i=1; i<1000; i++){
        if(isPrimeNumber(i) ){
            out.print("<h3>质数："+ i +"</h3>");
            count++;
        }
    }
    out.print("<h3>1~1000之内的质数共有："+ count +"个</h3>");

    %>

<%!
    public boolean isPrimeNumber(int number){
        for(int i=2; i<=(int)Math.sqrt(number); i++){
            if(number % i == 0){
                return false;
            }
        }
        System.out.println(number);
        return true;
    }
%>

</body>
</html>
