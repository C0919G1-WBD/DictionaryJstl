<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="javax.servlet.*" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/12/2019
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Map<String,String> dictionary = new HashMap<>();
        dictionary.put("hello","Xin chào");
        dictionary.put("goodbye","Tạm biệt");
        dictionary.put("computer","Máy tính");
        dictionary.put("why","Tại sao");
        dictionary.put("mouse","Chuột");

        String search = request.getParameter("value");
        String result = dictionary.get(search);
        if(result != null) {
            out.println("Word: " + search);
            out.println("Meaning: " + result);
        } else {
            out.println("Not found");
        }
    %>
    <br>
    <a href="index.jsp"><-- Return</a>
</body>
</html>
