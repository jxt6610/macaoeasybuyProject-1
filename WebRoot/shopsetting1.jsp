<%@page import="macaoeasybuy.bean.login.*"%>
<%@page import="macaoeasybuy.bean.goods.*"%>
<%@page import="macaoeasybuy.dao.goodsdao.*"%>
<%@page import="macaoeasybuy.bean.store.*"%>
<%@page import="macaoeasybuy.dao.store.StoreDao"%>
<%@page import="macaoeasybuy.dao.logindao.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
Store store=StoreDao.queryStoreId(user.getUserId());
 ArrayList<GoodsTypes> goodsType=GoodsManage.queryAllGoodsFatherTypes();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>店鋪管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
   <div id="container_products" >
   <form action="StoreServlet" name="store" method="post">
       <table class="table table-bordered table-hover" width="100%">
       <tr>
       <th width="25%" style="background-color: #FF8C00"><img src="image/loginImages/7879_03.png">店鋪設置&nbsp;&nbsp;&nbsp;<img src="image/loginImages/shopUser.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已完成&nbsp;&nbsp;&nbsp;70%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;設置<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/pell_03.png">小店日志&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有&nbsp;&nbsp;&nbsp;15篇日志<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/shop_User04.png">店員管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有&nbsp;&nbsp;&nbsp;&nbsp;6&nbsp;&nbsp;個店員<img src="image/loginImages/right_03.png"></th>
       <th width="25%" style="background-color: #DCDCDC"><img src="image/loginImages/manege0_05.png">操作記錄&nbsp;&nbsp;&nbsp;<img src="image/loginImages/shopUser.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新操作記錄<img src="image/loginImages/right_03.png"></th>
       </tr>
       </table>
   
     <table class="table table-bordered table-hover" width="100%">
     <tr>
     <th  width="25%">
      <table class="table table-bordered table-hover" width="100%">
     <tr align="center"><td><button type="button" class="btn-lg0"><img alt="" src="image/loginImages/shopsetting2.png"><br>&nbsp;&nbsp;&nbsp;&nbsp;點擊&nbsp;&nbsp;&nbsp;&nbsp;<br>選取相冊</button></td>
     <td><button type="button" class="btn-lg0"><img alt="" src="image/loginImages/shopsetting1.png"><br>點擊拍照或<br>選取相冊</button></td>
     </tr>
     <tr align="center"><td>店鋪LOGO圖</td><td>店主頭像</td></tr>
     </table>
     </th>
     <th  width="25%">
      <table class="table table-bordered table-hover" width="100%">
     <tr><td align="center">修改小店登入賬號</td><th><input type="text"  class="form-control" value="<%=store.getStoreId() %>"  name="StoreId" placeholder="修改小店登入賬號" required><br></th></tr>
     <tr><td align="center">修改小店登入密碼</td>
     <th onclick=""><input type="password"  class="form-control" value="<%=user.getPassWord()%>"  name="PassWord" placeholder="修改小店登入密碼" required><br></th></tr>
     <tr><td align="center">我的買家身份登入賬號</td><th><input type="text"  class="form-control" value="<%=user.getUserId()%>"  name="UserId" placeholder="我的買家身份登入賬號"  readonly="readonly"></th></tr>
     </table>
     </th>
     <th  width="25%">
      <table class="table table-bordered table-hover" width="100%">
     <tr><td align="center">我的宜買小店名稱</td><th><input type="text"  class="form-control" value="<%=store.getStoreName()%>"  name="StoreName" placeholder="我的宜買小店名稱" required><br></th></tr>
     <tr><td align="center">我的昵稱（宜買店主）</td><th><input type="text"  class="form-control" value="<%=store.getStoreSecondName()%>"  name="StoreSecondName" placeholder="我的昵稱（宜買店主）" required><br></th></tr>
     <tr><td align="center">我的性別</td>
     <th><center>
     <%if(user.getUserSex().equals("男")){ %>
     <input type="radio" name="UserSex" value="男" checked="checked">男<img src="image/loginImages/feman.png" width="5%">&nbsp;&nbsp;&nbsp; 
      <input type="radio" name="UserSex" value="女" >女<img src="image/loginImages/man.png" width="5%">
     <%}else{ %>
       <input type="radio" name="UserSex" value="男" >男<img src="image/loginImages/feman.png" width="5%">&nbsp;&nbsp;&nbsp; 
     <input type="radio" name="UserSex" value="女" checked="checked">女<img src="image/loginImages/man.png" width="5%">
     <%} %>
     </center> </th>
     </tr>
     </table>
     </th>
     <th  width="25%">
     <table class="table table-bordered table-hover" width="100%">
     <tr><td align="center">我的店鋪專屬編號</td><th><input type="text"  class="form-control" value="<%=store.getStoreOnlyId()%>"  name="StoreOnlyId" placeholder="我的店鋪專屬編號"  readonly="readonly"><br></th></tr>
     <tr><td align="center">我的店鋪描述（20字以內）</td><th><input type="text"  class="form-control" value="<%=store.getStoreDescribe()%>"  name="StoreDescribe" placeholder="我的店鋪描述（20字以內）" required><br></th></tr>
     <tr><td align="center">請選擇商品大分類</td>
     <th>
       <select class="form-control" name="GoodsType">
       <option>請選擇商品大分類</option>
       <%int j=0; %>
       <%for(int i=0;i<goodsType.size();i++){ 
       if(goodsType.get(i).getOid()==store.getStoreTypeId()){
       j=i;
       }
       %>
         <option value="<%=goodsType.get(i).getOid() %>" selected="selected"><%=goodsType.get(i).getTypeName() %></option>
       <%} %>
       <option value="<%=goodsType.get(j).getOid() %>" selected="selected"><%=goodsType.get(j).getTypeName() %></option>
       </select>
     </th>
     </tr>
     </table>
     </th>
     </tr>
       </table>
          <table class="table table-bordered table-hover" width="100%">
     <tr>
     <th width="25%">
     <table class="table table-bordered table-hover" width="100%">
     <tr><td>我的中/英文名字:</td>
     <td><input type="text"  class="form-control" value="<%=user.getUserName()%>"  name="UserName" placeholder="我的中/英文名字" readonly="readonly"></td>
     </tr>
     <tr><td>我的聯系電話:</td>
     <td><input type="text"  class="form-control" value="<%=user.getUserPhone()%>"  name="UserPhone" placeholder="我的聯系電話" readonly="readonly"></td>
     </tr>
     </table>
     </th>
     <th width="25%">
      <table class="table table-bordered table-hover" width="100%">
     <tr><td>我的Whatsapp:</td>
     <td><input type="text"  class="form-control" value="<%=user.getUserWhatsapp()%>"  name="UserWhatsapp" placeholder="我的Whatsapp" readonly="readonly"></td>
     </tr>
     <tr><td>我的微信號:</td>
     <td><input type="text"  class="form-control" value="<%=user.getUserWechat()%>"  name="UserWechat" placeholder="我的微信號" readonly="readonly"></td>
     </tr>
     </table>
     </th>
     <th colspan="2">
      <table class="table table-bordered table-hover" width="100%">
     <tr><td width="20%">是否有實體店鋪:</td>
     <%if(store.getStoreIsNo()==1) {%>
     <td width="15%"><input type="radio" name="StoreIsNo" value="1" checked="checked">有實體店鋪</td>
     <td width="15%"><input type="radio" name="StoreIsNo" value="0">無實體店鋪</td>
     <%}else{ %>
      <td width="15%"><input type="radio" name="StoreIsNo" value="1" >有實體店鋪</td>
     <td width="15%"><input type="radio" name="StoreIsNo" value="0" checked="checked">無實體店鋪</td>
     <%} %>
      <td ></td>
     </tr>
     <tr><td>實體店鋪地址:</td>
     <td colspan="3"><input type="text"  class="form-control" value="<%=store.getStoreIsAddress()%>"  name="StoreIsAddress" placeholder="如有實體店鋪，只要填寫地址，宜買會提供推廣服務" required></td>
     </tr>
     </table>
     </th>
     </tr>
     </table>
     <table class="table table-bordered table-hover" width="100%">
     <tr>
     <th></th>
     <th width="15%">  <button type="submit" class="btn-danger" id="form_diary" onclick="return send_update('2015001')">保存修改</button> </th>
       <th></th>
       </tr>
     </table>
     </form>
   </div>
   <script type="text/javascript">
    function send_update(workerNo) {//修改

       // window.open(encodeURI(url + "?userName=" + userName));
        var r=confirm("确定修改吗？");
           if(r==false){
       return false;
         }else{
       
alert("修改成功！");
return true;
}

    }
   </script>
  </body>
</html>
