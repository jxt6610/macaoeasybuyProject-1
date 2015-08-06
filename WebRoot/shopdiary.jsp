<%@page import="macaoeasybuy.tool.pagebean.ThreeDES"%>
<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.dao.logindao.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
ArrayList<User> userall=UserDaoManage.queryAllUsers();
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
       <tr>
       <th width="25%">創建日志</th>
       <th width="25%">在辦事宜</th>
       <th width="25%">待辦事宜</th>
       <th width="25%">完成事宜</th>
       </tr>
       
       <tr>
       <th>
         <table class="table table-bordered table-hover" width="100%">
         <tr>
         <th>  <input type="text"  class="form-control" value="" name="" placeholder="我的日志標題" required></th>
         </tr>
         <tr><th>  <textarea cols="60" rows="20" name="" placeholder="我的日志內容"></textarea></th></tr>
         <tr><th>  
         <select class="form-control" name="">
         <option>相關參與人員</option>
         </select>
         </th>
         </tr>
         <tr>
             <th><table class="table table-bordered table-hover" width="100%">
             <tr>
             <th>
               <select class="form-control" name="">
         <option>選擇狀態</option>
         </select>
             </th>
             <th>
               <select class="form-control" name="">
         <option>普通日志</option>
         </select>
             </th>
             <th>
               <select class="form-control" name="">
         <option>保存修改</option>
         </select>
             </th>
             </tr>
             </table>
             </th>
         </tr>
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
