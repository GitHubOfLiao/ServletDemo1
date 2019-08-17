<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-05-29
  Time: 01:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <td>年限</td>
            <td>工资</td>
        </tr>
        <%
            for(int i=0; i<=40; i++){
                out.println("<tr>");
                out.println("<td>"+ i +"</td>");
                int salary = 0;
                if(i<=5){
                    salary = 1500 + i*150;
                }else if(i>5 && i<=10){
                    salary = 1500 + 5*150 + (i-5)*300;
                }else{
                    salary = 1500 + 5*150 + 5*300 + (i-10)*375;
                }

                out.println("<td>"+ salary +"</td>");
                out.println("</tr>");
            }
        %>

        <%

            for(int i=0; i<10; i++){
                int salary = 0;
                if(i<=5){
                    salary = 1500 + i*150;
                }else if(i>5 && i<=10){
                    salary = 1500 + 5*150 + (i-5)*300;
                }else{
                    salary = 1500 + 5*150 + 5*300 + (i-10)*375;
                }
        %>
                <tr>
                    <td><%= i %></td>
                    <td><%=salary %></td>
                </tr>
        <%
            }

        %>
        <tr>
            <td></td>
            <td></td>
        </tr>


    </table>

</body>
</html>
