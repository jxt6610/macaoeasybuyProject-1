<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.dao.goodsdao.GoodsManage"%>
<%@page import="macaoeasybuy.bean.goods.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
ArrayList<Goods>goodsList=GoodsManage.queryAllGoods();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

  </head>
  <body>
 <div id="container_products" >
   <table class="table table-bordered table-hover">
   <%
   int Row=goodsList.size()/4;
   int Col=goodsList.size()%4;
   int num=0;
   if(Col!=0){
    %>
   <%for(int i=0;i<Row;i++){ %>
   <tr>
   <%for(int j=0;j<4;j++){ %>
   <th width="25%" height="50%">
   <table class="table table-bordered table-hover" border="2" bordercolor="#A52A2A" width="100%" style="margin-bottom: -1%;">
     <tr><th rowspan="4" width="30%"><a href="editgoods.jsp?goodsNo=<%=goodsList.get(num).getOid()%>"><img src="image/loginImages/pr02.jpg" width="100%"></a></th>
     <th><%=goodsList.get(num).getGoodsName() %></th>
     <td rowspan="2" width="20%"><input type="button" name=""  id="up" value="已上架" class="btn-warning" ></td>
     </tr> 
     <tr><td><%=goodsList.get(num).getGoodsNo() %></td>
     </tr>
     <tr><td>售價：<%=goodsList.get(num).getGoodsMarketPrice() %></td>
     <td rowspan="2"><center><input type="image" src="image/loginImages/right.png" class="btn-default"></center></td></tr>
     <tr><td>售出360件/余<%=goodsList.get(num).getGoodsNum()%></td>
     </tr>
   </table>
   </th>
<%num++;} %>
   </tr>
<%}%>
<tr>
<%for(int a=0;a<Col;a++){ %>
  <th width="25%" height="50%">
   <table class="table table-bordered table-hover" border="2" bordercolor="#A52A2A" width="100%" style="margin-bottom: -1%;">
     <tr><th rowspan="4" width="30%"><a href="editgoods.jsp?goodsNo=<%=goodsList.get(num).getOid()%>"><img src="image/loginImages/pr02.jpg" width="100%"></a></th>
     <th><%=goodsList.get(num).getGoodsName() %></th>
     <td rowspan="2" width="20%"><input type="button" name="" value="已上架" class="btn-warning" ></td>
     </tr> 
     <tr><td><%=goodsList.get(num).getGoodsNo() %></td>
     </tr>
     <tr><td>售價：<%=goodsList.get(num).getGoodsMarketPrice() %></td>
     <td rowspan="2"><center><input type="image" src="image/loginImages/right.png" class="btn-default"></center></td></tr>
     <tr><td>售出360件/余<%=goodsList.get(num).getGoodsNum()%></td>
     </tr>
   </table>
   </th>
<%num++;} %>
</tr>
<%}else{%>
<%for(int i=0;i<Row;i++){ %>
<tr>
   <%for(int j=0;j<4;j++){ %>
   <th width="25%" height="50%">
   <table class="table table-bordered table-hover" border="2" bordercolor="#A52A2A" width="100%" style="margin-bottom: -1%;">
     <tr><th rowspan="4" width="30%"><a href="editgoods.jsp?goodsNo=<%=goodsList.get(num).getOid()%>"><img src="image/loginImages/pr02.jpg" width="100%"></a></button></th>
     <th><%=goodsList.get(num).getGoodsName() %></th>
     <td rowspan="2" width="20%"><input type="button" name="" value="已上架" class="btn-warning" ></td>
     </tr> 
     <tr><td><%=goodsList.get(num).getGoodsNo() %></td>
     </tr>
     <tr><td>售價：<%=goodsList.get(num).getGoodsMarketPrice() %></td>
     <td rowspan="2"><center><input type="image" src="image/loginImages/right.png" class="btn-default"></center></td></tr>
     <tr><td>售出360件/余<%=goodsList.get(num).getGoodsNum()%></td>
     </tr>
   </table>
   </th>
<%num++;} %>
   </tr>
<%} %>
<%} %>
   </table>
   
   
 </div>
  </body>
</html>
