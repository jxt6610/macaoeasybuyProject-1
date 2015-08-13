<%@page import="macaoeasybuy.tool.pagebean.ThreeDES"%>
<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.bean.log.LogThing"%>
<%@page import="macaoeasybuy.dao.logindao.UserDaoManage"%>
<%@page import="macaoeasybuy.dao.log.LogThingDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
ArrayList<User> userall=UserDaoManage.queryAllUsers();
ArrayList<LogThing> list=LogThingDao.queryAllLogThing();
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
       <th width="25%" style="background-color: #FF8C00"><img src="image/loginImages/pell_03.png">小店日志&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有&nbsp;&nbsp;&nbsp;15篇日志<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/shop_User04.png">店員管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有&nbsp;&nbsp;&nbsp;&nbsp;<%= userall.size()%>&nbsp;&nbsp;個店員<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/manege0_05.png">操作記錄&nbsp;&nbsp;&nbsp;<img src="image/loginImages/shopUser.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新操作記錄<img src="image/loginImages/right_03.png"></th>
       </tr>
       </table>
          
     <table class="table table-bordered table-hover" width="100%">
       <tr style="background-color: #FAFAD2">
       <th width="25%">創建日志</th>
       <th width="25%">在辦事宜</th>
       <th width="25%">待辦事宜</th>
       <th width="25%">完成事宜</th>
       </tr>
       
       <tr>
       <th>
      <form action="ShopLogManage" name="LogAdd" method="post">
         <table class="table table-bordered table-hover" width="100%">
         <tr>
         <th>  <input type="text"  class="form-control" value="" name="LogTitle" placeholder="我的日志標題" required></th>
         </tr>
         <tr><th>  <textarea cols="60" rows="20" name="LogBody" placeholder="我的日志內容" ></textarea></th></tr>
         <tr><th>  
          <button type="button" id="createSupplier" class="form-control" data-toggle="modal" data-target="#myModal"> 選擇參與人員</button>
         </th>
         </tr>
         <tr>
             <th><table class="table table-bordered table-hover" width="100%">
             <tr>
             <th>
               <select class="form-control" name="LogStatue">
         <option value="1">選擇狀態</option>
         <option value="1">在辦事宜</option>
         <option value="2">待辦事宜</option>
         <option value="3">完成事宜</option>
         </select>
             </th>
             <th>
               <select class="form-control" name="LogLevel">
         <option value="1">普通日志</option>
         <option value="2">緊急日志</option>
         </select>
             </th>
             <th>
        <button type="submit" class="btn-danger" id="form_diary">保存修改</button>         
             </th>
             </tr>
             </table>
             </th>
         </tr>
       </table>
       <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
              選擇參與人員
            </h4>
         </div>
         <div class="modal-body">
         被選中的人員可以看到您發布的最新消息！
         <center>
         <table width="200%" class="table table-bordered table-hover">
          <tr>
          <th>姓名</th><th>職稱</th><th><input type="checkbox" name="allchecked" value="">&nbsp;全選/全不選</th>
          </tr>
            <%for(int a=0;a<userall.size();a++) {%>
             <tr>
          <th><%=userall.get(a).getUserName() %></th>
           <%if(userall.get(a).getUserRole()==1){ %> 
     <th>（店長）</th>
     <%}else if(userall.get(a).getUserRole()==2){%>
      <th>（副店長）</th>
     <%}else if(userall.get(a).getUserRole()==3){ %>
       <th>（店助理）</th>
   <%} else if(userall.get(a).getUserRole()==4){%> 
      <th>（收銀員）</th>
     <%} else if(userall.get(a).getUserRole()==5){%>
      <th>（倉管員）</th>
     <%}else if(userall.get(a).getUserRole()==6){ %>
      <th>（採購員）</th>
     <%}else if(userall.get(a).getUserRole()==7){%>
     <th>（海外買手）</th>
     <%} else if(userall.get(a).getUserRole()==8){%>
     <th>（導購員）</th>
     <%} else if(userall.get(a).getUserRole()==9){%>
     <th>（營業員）</th>
     <%} else if(userall.get(a).getUserRole()==10){%>
     <th>（設計師）</th>
     <%}else if(userall.get(a).getUserRole()==11){ %>
     <th>（陳列師）</th>
     <%}else if(userall.get(a).getUserRole()==12){ %>
      <th>（陳列師）</th>
     <%}else{ %>
     <th>（送貨員）</th>
     <%} %>
          <th><input type="checkbox" name="checkBox" value="<%=userall.get(a).getUserId()%>"></th>
          </tr>
            <%} %>
            <tr></th></tr>
        </table>
       </center>
         </div>
      </div>
</div>
</div>
     </form>
       </th>
       <th>
        <form action="UpdateLogStstueDone" name="wancheng" method="post">
       <div class="panel-group" id="accordion">
       <%for(int i=0;i<list.size();i++){ 
       if(list.get(i).getLogStatue()==1){%>
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapse<%=i%>">
          <%=list.get(i).getLogTitle() %>  第 <%=i+1%> 条
        </a>
        <%if(list.get(i).getLogLevel()==2) {%>
        <tt><small><%=list.get(i).getLogUpTime() %></small>
        <img src="image/loginImages/new_infor.png" align="right"></tt>
        <%} %>
      </h4>
    </div>
    <div id="collapse<%=i%>" class="panel-collapse collapse">
      <div class="panel-body">
     <table class="table table-bordered table-hover" width="100%">
     <tr><th colspan="3"><%=list.get(i).getLogBody() %></th></tr>
     <tr><td colspan="3"><small>創建于<%=list.get(i).getLogUpTime() %></small></td></tr>
     <tr>
     <th>
        <input type="hidden" name="UserLogoid" value="<%=list.get(i).getOid()%>">
     </th>
     <th>
     </th>
     <th>  <button type="submit" class="btn-danger" id="form_diary">已完成</button>        
     </th>
     </tr>
     </table>
      </div>
    </div>
  </div>
  <%} }%>
</div>
</form>
       </th>
       
       
       
      
       
       <th><!-- 待办事宜 -->
       <form action="UpdateLogUserStstute" name="daiban" method="post">
       <div class="panel-group" id="accordion">
      <%for(int i=0;i<list.size();i++){            
       if(list.get(i).getLogStatue()==3){%>
   <div class="panel panel-info">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseThreeThing<%=i%>">
          <%=list.get(i).getLogTitle() %>
        </a>
        <tt><small><%=list.get(i).getLogUpTime() %></small>
        <img src="image/loginImages/new_infor.png" align="right"></tt>
      </h4>
    </div>
    <div id="collapseThreeThing<%=i%>" class="panel-collapse collapse">
      <div class="panel-body">
         <table class="table table-bordered table-hover" width="100%">
     <tr><th colspan="3"><%=list.get(i).getLogBody() %></th></tr>
     <tr><td colspan="3"><small>創建于<%=list.get(i).getLogUpTime() %></small></td></tr>
     <tr>
     <th>參與人:</th> <th> <%=UserDaoManage.queryId(list.get(i).getLogId()).getUserName()%></th>
     </tr>
     <tr>
     <th width="50%">
     <input type="hidden" name="UserLogoid" value="<%=list.get(i).getOid()%>">
     </th>
     <th>
         <button type="submit" class="btn-danger" id="form_diary">接受</button>
     </th>
     </tr>
     </table>
      </div>
    </div>
  </div>
</div>
 <%} }%>
 </form>
       </th>
       
       <th><!-- 完成事宜 -->
       <div class="panel-group" id="accordion">
   <%for(int i=0;i<list.size();i++){            
       if(list.get(i).getLogStatue()==3){%>
   <div class="panel panel-success">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseTwoThingHave2<%=i%>">
            <%=list.get(i).getLogTitle() %>  第 <%=i+1%> 条
        </a>
         <%if(list.get(i).getLogLevel()==2) {%>
        <tt><small><%=list.get(i).getLogUpTime() %></small>
        <img src="image/loginImages/new_infor.png" align="right"></tt>
        <%} %>
      </h4>
    </div>
    <div id="collapseTwoThingHave2<%=i%>" class="panel-collapse collapse">
      <div class="panel-body">
        <table class="table table-bordered table-hover" width="100%">
     <tr><th colspan="3"><%=list.get(i).getLogBody() %></th></tr>
     <tr><td colspan="3"><small>創建于<%=list.get(i).getLogUpTime() %></small></td></tr>
     <tr>
     <th>
         <select class="form-control" name="">
         <option>在辦事宜</option>
         </select>
     </th>
     <th>
          <select class="form-control" name="">
         <option>普通日志</option>
         </select>
     </th>
     </tr>
     </table>
      </div>
    </div>
  </div>
</div>
<%} }%>
       </th>
     </tr>
       </table>
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
