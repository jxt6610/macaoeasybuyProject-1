<%@page import="macaoeasybuy.bean.login.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

  </head>
  
  <body>
    <h2>
    <%=user.getUserName()
    %>欢迎你登录本系统！
    </h2>
    
    <table class="table table-bordered table-hover">
    <tr><th>编号</th><th>姓名</th><th>性别</th><th>职位</th><th>上次登录时间</th></tr>
    <tr><th><%=user.getUserId()%></th>
    <th> <%=user.getUserName()%></th>
    <th><%=user.getUserSex()%></th>
   <%if(user.getUserRole()==1){%><th>经理</th><%}else{ %><th>店员</th><%} %>
   <th><%=user.getUserDoenTime() %></th></tr>
   <tr>
   <th><a href="productmanage.jsp">管理商品</a></th>
   <th><a href="addgoods.jsp">添加商品</a></th>
   <th><a href="shopmember.jsp">店员管理</a></th>
   <th><a href="shopdiary.jsp">日志管理</a></th></tr>
    </table>
    
  </body>
</html>
