<%@ page import="model.User" %>
<%@ page import="dao.UserDataAccess" %><%--
  Created by IntelliJ IDEA.
  User: solam
  Date: 4/22/2019
  Time: 12:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User JSP</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    String password=request.getParameter("password");
    float longitude=34.55f;
    float latitude=12.3334f;
    String role=request.getParameter("role");

    User user=new User(0,name,email,password,address,longitude,latitude,role);
    UserDataAccess da=new UserDataAccess();
    da.addNew(user);

    response.sendRedirect("AllUserServlet");
%>
</body>
</html>
