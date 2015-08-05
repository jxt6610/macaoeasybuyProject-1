<%@page import="macaoeasybuy.tool.pagebean.ThreeDES"%>
<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.dao.logindao.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
//ArrayList<User> userall=UserDaoManage.queryAllUsers();
String pageNo=request.getParameter("pageno");
if(pageNo==null){
pageNo="1";
   }
 int pageno=Integer.parseInt(pageNo);
ArrayList<User> userall=UserDaoManage.queryAllUser(6, pageno);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>店员管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
   <div id="container_products" >
       <table class="table table-bordered table-hover" width="100%">
       <tr>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/7879_03.png">店鋪設置&nbsp;&nbsp;&nbsp;<img src="image/loginImages/shopUser.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已完成&nbsp;&nbsp;&nbsp;70%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;設置<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/pell_03.png">小店日志&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有&nbsp;&nbsp;&nbsp;15篇日志<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #FF8C00"><img src="image/loginImages/shop_User04.png">店員管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有&nbsp;&nbsp;&nbsp;&nbsp;<%= userall.size()%>&nbsp;&nbsp;個店員<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/manege0_05.png">操作記錄&nbsp;&nbsp;&nbsp;<img src="image/loginImages/shopUser.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新操作記錄<img src="image/loginImages/right_03.png"></th>
       </tr>
       </table>
   
     <table class="table table-bordered table-hover" width="100%">
       <tr style="background-color: #F0E68C"><th width="25%" align="left">加入店員</th><th colspan="2">店員列表(<%=userall.size() %>個店員)</th></tr>
       <tr>
       <th>
       <form action="AddUserInfor" name="UserAdd1" method="post">
       <table class="table table-bordered table-hover" width="100%">
       <tr><td colspan="3" align="center"><button type="button" class="btn-lg0"><img alt="" src="image/loginImages/head_10.png"><br>點擊拍照或<br>選取相冊</button></td></tr>
       <tr><td>店員姓名</td>
       <th colspan="2"><input type="text"  class="form-control" value=""  name="UserName" placeholder="店員姓名" required></th></tr>
        <tr><td>性別</td>
       <th colspan="2">
       <input type="radio" name="UserSex" value="男">男<img src="image/loginImages/feman.png" width="5%">&nbsp;&nbsp;&nbsp; <input type="radio" name="UserSex" value="女">女<img src="image/loginImages/man.png" width="5%">
       </tr>
       <tr><td>店員賬號</td>
       <th colspan="2"><input type="text"  class="form-control" value=""  name="UserId" placeholder="店員賬號" required></th></tr>
       <tr><td>店員密碼</td>
       <th colspan="2"><input type="password"  class="form-control" value="123456"  name="PassWord" placeholder="店員密碼" required></th></tr>
       <tr><td>店員手機</td>
       <th colspan="2"><input type="text"  class="form-control" value=""  name="UserPhone" placeholder="店員手機" required></th></tr>
       <tr><td>店員Wechat</td>
       <th colspan="2"><input type="text"  class="form-control" value=""  name="UserWechat" placeholder="店員Wechat" required></th></tr>
       <tr><td>店員Whatsapp</td>
       <th colspan="2"><input type="text"  class="form-control" value="" name="UserWhatsapp" placeholder="店員Whatsapp" required></th></tr>
       <tr><td>
       <select class="form-control" name="UserRole">
       <option value="1">選擇角色</option>
       <option value="1">店長</option>
       <option value="2">副店長</option>
       <option value="3">店助理</option>
       <option value="4">收銀員</option>
       <option value="5">倉管員</option>
       <option value="6">採購員</option>
       <option value="7">海外買手</option>
       <option value="8">導購員</option>
       <option value="9">營業員</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
       </select>
       </td>
       <td>
        <select class="form-control" name="UserProper">
       <option value="2">選擇屬性</option>
       <option value="1">離職</option>
       <option value="2">全職</option>
       <option value="3">兼職</option>
       </select>
       </td>
       <td> <button type="button" id="createSupplier" class="form-control" data-toggle="modal" data-target="#myModal">設定權限</button></td>
       </tr>
       <tr><td colspan="3"><button type="submit" class="btn-shopassistant">保存</button></td></tr>
       </table>
       </form>
       </th>
       <th width="5%"></th>
        <th>
        
          <table class="table table-bordered table-hover">
   <%
   int Row=userall.size()/3;
   int Col=userall.size()%3;
   int num=0;
   if(Col!=0){
    %>
   <%for(int i=0;i<Row;i++){ %>
   <tr>
   <%for(int j=0;j<3;j++){ %>
   <th width="25%" height="50%">
   <table class="table table-bordered table-hover" border="2" bordercolor="#A52A2A" width="100%" style="margin-bottom: -1%;">
     <tr><th rowspan="5" width="30%"><a href=""><img src="image/loginImages/user.jpg" width="100%"></a></th>
    <%if(userall.get(num).getUserRole()==1){ %> 
     <th><%=userall.get(num).getUserName() %>（店長）</th>
     <%}else if(userall.get(num).getUserRole()==2){%>
      <th><%=userall.get(num).getUserName() %>（副店長）</th>
     <%}else if(userall.get(num).getUserRole()==3){ %>
       <th><%=userall.get(num).getUserName() %>（店助理）</th>
   <%} else if(userall.get(num).getUserRole()==4){%> 
      <th><%=userall.get(num).getUserName() %>（收銀員）</th>
     <%} else if(userall.get(num).getUserRole()==5){%>
      <th><%=userall.get(num).getUserName() %>（倉管員）</th>
     <%}else if(userall.get(num).getUserRole()==6){ %>
      <th><%=userall.get(num).getUserName() %>（採購員）</th>
     <%}else if(userall.get(num).getUserRole()==7){%>
     <th><%=userall.get(num).getUserName() %>（海外買手）</th>
     <%} else if(userall.get(num).getUserRole()==8){%>
     <th><%=userall.get(num).getUserName() %>（導購員）</th>
     <%} else if(userall.get(num).getUserRole()==9){%>
     <th><%=userall.get(num).getUserName() %>（營業員）</th>
     <%} else if(userall.get(num).getUserRole()==10){%>
     <th><%=userall.get(num).getUserName() %>（設計師）</th>
     <%}else if(userall.get(num).getUserRole()==11){ %>
     <th><%=userall.get(num).getUserName() %>（陳列師）</th>
     <%}else if(userall.get(num).getUserRole()==12){ %>
      <th><%=userall.get(num).getUserName() %>（陳列師）</th>
     <%}else{ %>
     <th><%=userall.get(num).getUserName() %>（送貨員）</th>
     <%} %>
     <td rowspan="2" width="20%"><center><input type="image" src="image/loginImages/right.png" class="btn-default"></center></td>
     </tr> 
     <tr><td>手機號:<%=userall.get(num).getUserPhone() %></td>
     </tr>
     <tr><td>微信：<%=userall.get(num).getUserWechat() %></td>
     <%if(userall.get(num).getUserSex().equals("女")){%>
     <td rowspan="2"><center><img src="image/loginImages/man.png" width="30%"></center></td>
     <%}else{ %>
       <td rowspan="2"><center><img src="image/loginImages/feman.png" width="30%"></center></td>
     <%}%>
     </tr>
     <tr><td>Whatsapp：<%=userall.get(num).getUserWhatsapp()%></td>
     </tr>
     <tr><td> PastTime:<%=userall.get(num).getUserDoenTime()%></td>
     </tr>
     <tr><td colspan="3">
      <table class="table table-bordered table-hover">
      <tr>
      <th>
      <select class="form-control">
      <option>店主</option>
      <option>倉管</option>
      </select>
      </th>
      <th>
      <select class="form-control">
      <option>選擇屬性</option>
      </select>
      </th>
       <th>
    <button type="button" id="createSupplier" class="form-control" data-toggle="modal" data-target="#myModal">設定權限</button>
      </th>
      </tr>
      </table>
     </td>
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
     <tr><th rowspan="5" width="30%"><a href=""><img src="image/loginImages/user.jpg" width="100%"></a></th>
    <%if(userall.get(num).getUserRole()==1){ %> 
     <th><%=userall.get(num).getUserName() %>（店長）</th>
     <%}else if(userall.get(num).getUserRole()==2){%>
      <th><%=userall.get(num).getUserName() %>（副店長）</th>
     <%}else if(userall.get(num).getUserRole()==3){ %>
       <th><%=userall.get(num).getUserName() %>（店助理）</th>
   <%} else if(userall.get(num).getUserRole()==4){%> 
      <th><%=userall.get(num).getUserName() %>（收銀員）</th>
     <%} else if(userall.get(num).getUserRole()==5){%>
      <th><%=userall.get(num).getUserName() %>（倉管員）</th>
     <%}else if(userall.get(num).getUserRole()==6){ %>
      <th><%=userall.get(num).getUserName() %>（採購員）</th>
     <%}else if(userall.get(num).getUserRole()==7){%>
     <th><%=userall.get(num).getUserName() %>（海外買手）</th>
     <%} else if(userall.get(num).getUserRole()==8){%>
     <th><%=userall.get(num).getUserName() %>（導購員）</th>
     <%} else if(userall.get(num).getUserRole()==9){%>
     <th><%=userall.get(num).getUserName() %>（營業員）</th>
     <%} else if(userall.get(num).getUserRole()==10){%>
     <th><%=userall.get(num).getUserName() %>（設計師）</th>
     <%}else if(userall.get(num).getUserRole()==11){ %>
     <th><%=userall.get(num).getUserName() %>（陳列師）</th>
     <%}else if(userall.get(num).getUserRole()==12){ %>
      <th><%=userall.get(num).getUserName() %>（陳列師）</th>
     <%}else{ %>
     <th><%=userall.get(num).getUserName() %>（送貨員）</th>
     <%} %>
     <td rowspan="2" width="20%"><center><input type="image" src="image/loginImages/right.png" class="btn-default"></center></td>
     </tr> 
     <tr><td>手機號:<%=userall.get(num).getUserPhone() %></td>
     </tr>
     <tr><td>微信：<%=userall.get(num).getUserWechat() %></td>
     <%if(userall.get(num).getUserSex().equals("女")){%>
     <td rowspan="2"><center><img src="image/loginImages/man.png" width="30%"></center></td>
     <%}else{ %>
       <td rowspan="2"><center><img src="image/loginImages/feman.png" width="30%"></center></td>
     <%}%>
     <tr><td>Whatsapp：<%=userall.get(num).getUserWhatsapp()%></td>
     </tr>
     <tr><td> PastTime:<%=userall.get(num).getUserDoenTime()%></td>
     </tr>
     <tr><td colspan="3">
      <table class="table table-bordered table-hover">
      <tr>
      <th>
      <select class="form-control">
      <option>店主</option>
      <option>倉管</option>
      </select>
      </th>
      <th>
      <select class="form-control">
      <option>選擇屬性</option>
      </select>
      </th>
       <th>
    <button type="button" id="createSupplier" class="form-control" data-toggle="modal" data-target="#myModal">設定權限</button>
      </th>
      </tr>
      </table>
     </td>
     </tr>
   </table>
   </th>
<%num++;} %>
</tr>
<%}else{%>
<%for(int i=0;i<Row;i++){ %>
<tr>
   <%for(int j=0;j<3;j++){ %>
   <th width="25%" height="50%">
   <table class="table table-bordered table-hover" border="2" bordercolor="#A52A2A" width="100%" style="margin-bottom: -1%;">
     <tr><th rowspan="5" width="30%"><a href=""><img src="image/loginImages/user.jpg" width="100%"></a></button></th>
     <%if(userall.get(num).getUserRole()==1){ %> 
     <th><%=userall.get(num).getUserName() %>（店長）</th>
     <%}else if(userall.get(num).getUserRole()==2){%>
      <th><%=userall.get(num).getUserName() %>（副店長）</th>
     <%}else if(userall.get(num).getUserRole()==3){ %>
       <th><%=userall.get(num).getUserName() %>（店助理）</th>
   <%} else if(userall.get(num).getUserRole()==4){%> 
      <th><%=userall.get(num).getUserName() %>（收銀員）</th>
     <%} else if(userall.get(num).getUserRole()==5){%>
      <th><%=userall.get(num).getUserName() %>（倉管員）</th>
     <%}else if(userall.get(num).getUserRole()==6){ %>
      <th><%=userall.get(num).getUserName() %>（採購員）</th>
     <%}else if(userall.get(num).getUserRole()==7){%>
     <th><%=userall.get(num).getUserName() %>（海外買手）</th>
     <%} else if(userall.get(num).getUserRole()==8){%>
     <th><%=userall.get(num).getUserName() %>（導購員）</th>
     <%} else if(userall.get(num).getUserRole()==9){%>
     <th><%=userall.get(num).getUserName() %>（營業員）</th>
     <%} else if(userall.get(num).getUserRole()==10){%>
     <th><%=userall.get(num).getUserName() %>（設計師）</th>
     <%}else if(userall.get(num).getUserRole()==11){ %>
     <th><%=userall.get(num).getUserName() %>（陳列師）</th>
     <%}else if(userall.get(num).getUserRole()==12){ %>
      <th><%=userall.get(num).getUserName() %>（陳列師）</th>
     <%}else{ %>
     <th><%=userall.get(num).getUserName() %>（送貨員）</th>
     <%} %>
     <td rowspan="2" width="20%"><center><input type="image" src="image/loginImages/right.png" class="btn-default"></center></td>
     </tr> 
     <tr><td>手機號:<%=userall.get(num).getUserPhone() %></td>
     </tr>
     <tr><td>微信：<%=userall.get(num).getUserWechat() %></td>
     <%if(userall.get(num).getUserSex().equals("女")){%>
     <td rowspan="2"><center><img src="image/loginImages/man.png" width="30%"></center></td>
     <%}else{ %>
       <td rowspan="2"><center><img src="image/loginImages/feman.png" width="30%"></center></td>
     <%}%>
    </tr>
     <tr><td>Whatsapp：<%=userall.get(num).getUserWhatsapp()%></td>
     </tr>
     <tr><td> PastTime:<%=userall.get(num).getUserDoenTime()%></td>
     <%if(userall.get(num).getUserProper()==1) {%>
     <td><a>離職</a></td>
     <%}else if(userall.get(num).getUserProper()==2){ %>
       <td><a>全職</a></td>
     <%} else{%>
     <td><a>兼職</a></td>
     <%} %>
     </tr>
     <tr><td colspan="3">
      <table class="table table-bordered table-hover">
      <tr>
      <th>
      <select class="form-control">
      <option>店主</option>
      <option>倉管</option>
      </select>
      </th>
      <th>
      <select class="form-control">
      <option>選擇屬性</option>
      </select>
      </th>
       <th>
       <button type="button" id="createSupplier" class="form-control" data-toggle="modal" data-target="#myModal">設定權限</button>
      </th>
      </tr>
      </table>
     </td>
     </tr>
   </table>
   </th>
<%num++;} %>
   </tr>
<%} %>
<%} %>
<tr><th colspan="3">
<center>
<a href="shopmember.jsp?pageno=1">首頁</a> |&nbsp;&nbsp;&nbsp;&nbsp;第<%=userall.get(1).getCurrent_page() %>頁 &nbsp;&nbsp;&nbsp;
<select>
<option>1</option>
<option>2</option>
</select>
&nbsp;&nbsp;&nbsp;|<a href="shopmember.jsp?pageno=<%=userall.get(1).getTotal_pages()%>">尾頁</a>&nbsp;&nbsp;&nbsp;共2頁
</center>
</th></tr>
   </table>
        
        </th>
       </tr>
       </table>
   </div>
   
   
   <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
    <form action="" name="power" method="post">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
              店員<a>番薯</a>權限
            </h4>
         </div>
         <div class="modal-body" >
         请正确输入信息，确保信息正确安全！
         <center>
         <table width="200%" class="table table-bordered table-hover">
         <tr style="background-color: #FFE4E1">
         <th colspan="4" width="50%">信息總覽</th><th colspan="4">供應商管理</th>
         </tr>
         <tr>
         <th><button class="btn-shopPower" type="button" value="1" id="homepage">小店首頁</button></th>
         <th></th>
         <th></th>
         <th></th>
         <th><button class="btn-shopPower" type="button" value="2" id="createsupplier">創建供應商</button></th>
         <th><button class="btn-shopPower" type="button" value="3" id="suppliertable">供應商列表</button></th>
         <th><button class="btn-shopPower" type="button" value="4" id="editsupplier">編輯商列表</button></th>
         </tr>
         
         <tr style="background-color: #FFE4E1">
         <th colspan="4" width="50%">宜買通知</th><th colspan="4">廣告管理</th>
         </tr>
         <tr>
         <th><button class="btn-shopPower" type="button" value="5" id="yimaiinformation">宜買信息</button></th>
         <th><button class="btn-shopPower" type="button" value="6" id="yimaibaoming">團購報名</button></th>
         <th><button class="btn-shopPower" type="button" value="7" id="yimaibuy">活動報名</button></th>
         <th></th>
         <th><button class="btn-shopPower" type="button" value="8" id="addinformation">添加廣告</button></th>
         <th><button class="btn-shopPower" type="button" value="9" id="adtable">廣告列表</button></th>
         <th><button class="btn-shopPower" type="button" value="10" id="editad">編輯廣告</button></th>
          <th></th>
         </tr>
         
         <tr style="background-color: #FFE4E1">
         <th colspan="4" width="50%">商品管理</th><th colspan="4">推廣利器</th>
         </tr>
         <tr>
         <th><button class="btn-shopPower" type="button" value="11" id="addgoods">添加商品</button></th>
         <th><button class="btn-shopPower" type="button" value="12" id="goodstable">商品列表</button></th>
         <th><button class="btn-shopPower" type="button" value="13" id="speakmanage">評價管理</button></th>
         <th><button class="btn-shopPower" type="button" value="14" id="upgoods">上架商品</button></th>
         <th><button class="btn-shopPower" type="button" value="15" id="xainupad">線上推廣</button></th>
         <th><button class="btn-shopPower" type="button" value="16" id="xiandownad">線下推廣</button></th>
         <th><button class="btn-shopPower" type="button" value="17" id="cuxiaotool">促銷工具</button></th>
         <th></th>
         </tr>
         
         <tr>
          <th><button class="btn-shopPower" type="button" value="18" id="downgoods">下架商品</button></th>
          <th><button class="btn-shopPower" type="button" value="20" id="editgoods">編輯商品</button></th>
          <th></th>
          <th></th>
          <th colspan="4" style="background-color: #FFE4E1">銷售統計</th>
         </tr>
         
          <tr>
          <th colspan="4" style="background-color: #FFE4E1">訂單管理</th>
          <th><button class="btn-shopPower" type="button" value="21" id="liuliangfenxi">流量分析</button></th>
          <th><button class="btn-shopPower" type="button" value="22" id="liuliangtongji">客戶統計</button></th>
          <th><button class="btn-shopPower" type="button" value="23" id="ordertongji">訂單統計</button></th>
          <th><button class="btn-shopPower" type="button" value="24" id="xiaoshouinformation">銷售概況</button></th>
         </tr>
         
       <tr>
         <th><button class="btn-shopPower" type="button" value="25" id="daifahuo">待發貨</button></th>
         <th><button class="btn-shopPower" type="button" value="26" id="paihuozhong">配貨中</button></th>
         <th><button class="btn-shopPower" type="button" value="27" id="fahuozhong">發貨中</button></th>
         <th><button class="btn-shopPower" type="button" value="28" id="daipingjia">待評價</button></th>
         <th><button class="btn-shopPower" type="button" value="29" id="huiyuanpaihang">會員排行</button></th>
         <th><button class="btn-shopPower" type="button" value="30" id="xiaoshoumingxi">銷售明細</button></th>
         <th><button class="btn-shopPower" type="button" value="31" id="xiaosjhoupeihang">銷售排行</button></th>
         <th><button class="btn-shopPower" type="button" value="32" id="fangwengoumai">訪購買率</button></th>
         </tr>
         
          <tr>
         <th><button class="btn-shopPower" type="button" value="33" id="shenqingtuihuo">申請退貨</button></th>
         <th><button class="btn-shopPower" type="button" value="34" id="shenqinghuanhuo">申請換貨</button></th>
         <th><button class="btn-shopPower" type="button" value="35" id="tuihuozhong">退貨中</button></th>
         <th><button class="btn-shopPower" type="button" value="36" id="huanhuozhong">換貨中</button></th>
         <th colspan="4" style="background-color: #FFE4E1">基本設置</th>
         </tr>
         
         <tr>
         <th><button class="btn-shopPower" type="button" value="37" id="wanchengjilu">完成記錄</button></th>
         <th><button class="btn-shopPower" type="button" value="38" id="tuihuojilu">退貨記錄</button></th>
         <th><button class="btn-shopPower" type="button" value="39" id="huanhuojilu">換貨記錄</button></th>
         <th><button class="btn-shopPower" type="button" value="40" id="xiaoshou">銷<br>售</button></th>
         <th><button class="btn-shopPower" type="button" value="41" id="dianpushezhi">店鋪設置</button></th>
         <th><button class="btn-shopPower" type="button" value="42" id="xiaodianrizhi">小店日志</button></th>
         <th><button class="btn-shopPower" type="button" value="43" id="dianyuanmanage">店員管理</button></th>
         <th><button class="btn-shopPower" type="button" value="44" id="caozuojilu">操作記錄</button></th>
         </tr>
         
          <tr><th colspan="8" style="background-color: #FFE4E1">倉庫管理</th></tr>
          
           <tr>
         <th><button class="btn-shopPower" type="button" value="45" id="quehuobiao">缺貨表</button></th>
         <th><button class="btn-shopPower" type="button" value="46" id="baojingbiao">報警表</button></th>
         <th><button class="btn-shopPower" type="button" value="47" id="qitabuhuo">其他補貨</button></th>
         <th><button class="btn-shopPower" type="button" value="48" id="buhuobiao" >補貨表</button></th>
         <th><button class="btn-shopPower" type="button" value="49" id="kucunbiandong" onclick="supplier()">庫存變動</button></th>
         <th colspan="3"></th>
         </tr>
         <tr><th colspan="8"><center><button type="reset" class="btn-lg0" style="background-color: #FF0000;width: 100%">保存修改</button></center></th></tr>
        </table>
       </center>
         </div>
      </div><!-- /.modal-content -->
      </form>
</div><!-- /.modal -->
</div>
   <script  type="text/javascript">
  function supplier(){
               var color=document.getElementById("kucunbiandong").value;
               if(color==<%=49%>){
              document.getElementById("kucunbiandong").style.background="#808080";
               }
             
        }
      	</script>

  </body>
</html>
