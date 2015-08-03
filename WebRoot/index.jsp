<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>导航栏的字形图标</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
     <div class="container_login">
     <br><br><br><br>
     <center>
        <div class="container_center_bg">
             <div class="container_center_form" >
             <form action="UserloginServlet" name="login" method="post">
             <table bordercolor="#B22222" border="2" width="100%">
             <tr>
             <th width="40%" ><center><img src="image/loginImages/people.png"></center></th>
             <th><input type="text" name="UserName" class="form-control,,input-lg" id="rcornersName" placeholder="请输入登入账号 "></th>
             </tr>
               <tr>
             <th><br></th>
             <th><br></th>
             </tr>
             <tr>
             <th><center><img src="image/loginImages/10.png"></th>
             <th><input type="password" name="PassWord" class="form-control,input-lg" id="rcornersName" placeholder="请输入登入密码"></th>
             </tr>
              <tr>
             <th><br></th>
             <th><br></th>
             </tr>
              <tr>
              <th colspan="2">
              <table  width="100%" >
              <tr>
              <th width="50%">
               <input type="button" class="btn-default" id="form_center_btn_form" value="忘記密碼" >
              </th>
              <th >
               <!-- <input type="image"   src="image/loginImages/up.png" class="btn-danger" id="form_center_buttonN"> -->
               <input type="submit" class="btn-danger" id="form_center_btn_form" value="登入" >
              </th>
              </tr>
              </table>
           </th>
             </tr>
              <tr>
             <th><br></th>
             <th><br></th>
             </tr>
              <tr>
             <th colspan="2">
               <!--   <input type="image"   src="image/loginImages/apply.png" class="btn-warning" id="form_center_buttonN" onclick="">-->
             <input type="button" class="btn-warning" id="form_center_buttonN" value="申请开店" >
             </th>
             </tr>
             </table>
              </form>
             </div>
            
        </div>
        </center>
     </div>
     
    </div>
   
 
  </body>
</html>
