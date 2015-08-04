<%@page import="macaoeasybuy.tool.pagebean.DataTimeNumber"%>
<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.dao.goodsdao.GoodsManage"%>
<%@page import="macaoeasybuy.bean.goods.*"%>
<%@page import="macaoeasybuy.dao.supplierdao.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
ArrayList<Color> color=GoodsManage.queryAllColor();
ArrayList<Supplier> supplier=GoodsManage.queryAllSupplier();
ArrayList<GoodsTypes> goodsFatherTypes=GoodsManage.queryAllGoodsFatherTypes();
ArrayList<GoodsTypes> goodsChildTypes=GoodsManage.queryAllGoodsChildTypes();

String  goodsNo0=(String)request.getParameter("goodsNo");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

  </head>
  <body>

 <div id="container_products" >
  <%ArrayList<Goods> goodEvery=GoodsManage.queryGoodsId(goodsNo0); 
%>
 <form action="UpdateGoods" name="updateGoods" method="post">

 <input name="GoodsOid" type="hidden" value="<%=goodEvery.get(0).getOid()%>">
   <table class="table table-bordered table-hover" width="100%" height="10%">

   <tr>
   <td width="12.5%"><button type="button" class="btn-lg"><img src="image/loginImages/test_03.png" width="80%"></button></td>
   <td width="12.5%"><button type="button" class="btn-lg"><img src="image/loginImages/test_03.png" width="80%"></button></td>
   <td width="12.5%"><button type="button" class="btn-lg"><img src="image/loginImages/test_03.png" width="80%"></button></td>
   <td width="12.5%"><button type="button" class="btn-lg"><img src="image/loginImages/test_03.png" width="80%"></button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   </tr>
    <tr align="center">
    <td>商品封面圖</td><td>商品主圖</td><td>商品展示圖一</td>
    <td>商品展示圖二<td>商品展示图三（如需要）</td><td>商品展示圖四（如需要）</td>
    <td>商品展示圖五（如需要）</td><td>商品展示圖六（如需要）</td>
    </tr>
   </table>
   <table  class="table table-bordered table-hover" width="100%">
   <tr><th><center>商品名稱</center></th><th><center>商品編號</center></th><th><center>商品大分類</center></th><th><center>商品子分類</center></th></tr>
   <tr>
   <th width="25%"><input type="text"  value="<%=goodEvery.get(0).getGoodsName() %>"  name="GoodsName" class="form-control" placeholder="請輸入商品名稱（九字以內）" required>
  </th>
   <th width="25%"><input type="text" value="<%=goodEvery.get(0).getGoodsNo() %>" name="GoodsNo" class="form-control" placeholder="請輸入商品編號牌" required readonly="readonly"></th>
   <th>
   <select name="FatherTypeName" class="form-control">
   <option value="1">請選擇商品大分類</option>
   <%for(int i=0;i<goodsFatherTypes.size();i++){ %>
   <option value="<%=goodsFatherTypes.get(i).getOid()%>"><%=goodsFatherTypes.get(i).getTypeName() %></option>
   <%} %>
   </select>
   </th>
   <th width="25%">
   <select name="ChildTypeName" class="form-control">
   <option value="1">請選擇商品子分類</option>
    <%for(int i=0;i<goodsChildTypes.size();i++){ %>
   <option value="<%=goodsChildTypes.get(i).getOid()%>"><%=goodsChildTypes.get(i).getTypeName() %></option>
   <%} %>
   </select>
   </th>
   </tr>
   <tr>
   <table  class="table table-bordered table-hover">
   <tr><th width="10%"><center>商品描述</center></th>
    <td colspan="4"><input type="text"  value="<%=goodEvery.get(0).getGoodsNote() %>" name="GoodsNote" class="form-control" placeholder="請輸入商品描述" required>
   </td>
   </tr>
   </table>
   </tr>
   </table>
   
   <table class="table table-bordered table-hover" width="100%">
   <tr>
   <th width="25%" ><center><img src="image/loginImages/one1.png">請選擇商品規格</center></th>
   <th width="25%"><center><img src="image/loginImages/two1.png">請填寫此規格商品的資料</center></th>
   <th><center><img src="image/loginImages/three1.png">請上傳此商品規格的圖片</center></th>
   <th width="25%"><center><img src="image/loginImages/four1.png">如需要，可添加一下個規格</center></th>
   </tr>
   <tr>
   <th>
    <select name="ColorCh" class="form-control">
    <option value="1">請選擇規格一</option>
    <%for(int i=0;i<color.size();i++){ %>
   <option value="<%=color.get(i).getOid() %>"><%=color.get(i).getColorCh() %></option>
   <%} %>
   </select>
    <select name="ColorEn" class="form-control">
   <option value="1">請選擇規格二（如需要）</option>
   <%for(int i=0;i<color.size();i++){ %>
   <option value="<%=color.get(i).getOid()%>"><%=color.get(i).getColorEn()%></option>
   <%} %>
   </select>
    <select name="Size" class="form-control" >
   <option value="30">請選擇規格三（如需要）</option>
   <option value="30">30码</option>
   <option value="32">32码</option>
   <option value="35">35码</option>
   </select>
   </th>
   <th>
   <table class="table table-bordered table-hover" width="100%">
   <tr>
   <td width="35%">此規格商品之庫存量</td>
   <td><input type="text"  class="form-control" value="<%=goodEvery.get(0).getGoodsNum() %>" name="GoodsNum" placeholder="此規格商品之庫存量" required></td>
   <td width="10%">（件）</td>
   </tr>
    <tr>
   <td width="35%">此規格商品之采購價</td>
   <td><input type="text"  class="form-control" value="<%=goodEvery.get(0).getGoodsMarketPrice()%>" name="GoodsMarketPrice" placeholder="此規格商品之采購價" required></td>
   <td width="10%">￥0.00</td>
   </tr>
    <tr>
   <td width="35%">此規格商品之售價</td>
   <td><input type="text"  class="form-control" value="<%=goodEvery.get(0).getGoodsActiveprice() %>" name="GoodsActiveprice" placeholder="此規格商品之售價" required></td>
   <td width="10%">￥0.00</td>
   </tr>
   </table>
   </th>
   <td><center><button type="button" class="btn-lg0">上傳<br>此規格圖片</button></center></td>
   <th><center><button type="button" class="btn-warning" id="add_goods_guige"><img alt="添加規格" src="image/loginImages/add.png">添加下一个规格<br>商品规格</button></center></th>
   </tr>
   </table>
   
     <table class="table table-bordered table-hover" width="100%">
   <tr>
   <td width="25%">
   <% int sup=goodEvery.get(0).getGoodsSupplier();
   ArrayList<Supplier>supplierQuery= SupplierManage.querySupplierId(sup);
   request.setAttribute("supplierName",supplierQuery.get(0).getSupplierName());
   String  SupplierName=supplierQuery.get(0).getSupplierName();
   String  SupplierUserPhone=supplierQuery.get(0).getSupplierUserPhone();
   String  SupplierLINE=supplierQuery.get(0).getSupplierLINE();
   String  SupplierWhatsapp=supplierQuery.get(0).getSupplierWhatsapp();
   String  SupplierUserName=supplierQuery.get(0).getSupplierUserName();
   String  SupplierWechat=supplierQuery.get(0).getSupplierWechat();
   String  SupplierPath=supplierQuery.get(0).getSupplierPath();
   String  SupplierNo=supplierQuery.get(0).getSupplierNo();
   String GoodsNo1=goodEvery.get(0).getGoodsNo();
   %>
    <select name="SuppLier" class="form-control">
   <option value="1">請選擇供應商</option>
   <%for(int i=0;i<supplier.size();i++){ %>
    <option value="<%=supplier.get(i).getOid()%>" onclick="createsupplier();" checked="checked"> <%=supplier.get(i).getSupplierName() %> </option> 
   <%} %>
   </select>
      <button type="button" id="createSupplier" class="btn-createSupplier" data-toggle="modal" data-target="#myModal">創建新供應商</button>
   </td>

    <td width="25%">
<input type="text"  class="form-control" value="供應商編號:<%=supplierQuery.get(0).getSupplierNo()%>" id="SupplierNo"  placeholder="供應商編號" required disabled="disabled">
<input type="text"  class="form-control" value="供應商聯系電話:<%=supplierQuery.get(0).getSupplierUserPhone()%>" id="SupplierUserPhone" placeholder="供應商聯系電話" required disabled="disabled">
<input type="text"  class="form-control" value="供應商LINE:<%=supplierQuery.get(0).getSupplierLINE()%>" id="SupplierLINE"  placeholder="供應商LINE" required disabled="disabled">
</td>
   <td width="25%">
   <select name="SuppLierState" class="form-control">
   <option value="1">請選擇供應商狀態</option>
   <option value="2">正常</option>
   <option value="3">拉黑</option>
   </select>
   <input type="text"  class="form-control" value="供應商Whatsapp:<%=supplierQuery.get(0).getSupplierWhatsapp()%>" id="SupplierWhatsapp"  placeholder="供應商Whatsapp" required disabled="disabled">
   <input type="text"  class="form-control" value="供應商地址:<%=supplierQuery.get(0).getSupplierPath()%>" id="SupplierPath"  placeholder="供應商地址" required disabled="disabled">
   </td>
<td width="25%">
   <input type="text"  class="form-control" value="供應商聯系人:<%=supplierQuery.get(0).getSupplierUserName()%>" id="SupplierUserName" placeholder="供應商聯系人" required disabled="disabled">
   <input type="text"  class="form-control" value="供應商Wechat:<%=supplierQuery.get(0).getSupplierWechat()%>" id="SupplierWechat"  placeholder="供應商Wechat" required disabled="disabled">
   </td>
   </tr>
   </table>
   
     <table class="table table-bordered table-hover" width="100%">
   <tr>
   <th width="30%"></th>
   <th width="30%">
   <center>
   <button type="button" class="btn-infodown" id="btn-info0">下架中</button>
   <button type="submit" class="btn-infopull" id="btn-infoctrl_s" >保存並發布</button>
   <button type="button" class="btn-info0" id="btn-info0">删除</button>
   </center>
   </th>
   <th></th>
   </tr>
   </table>
   </form>
 </div>
 
 
 
 
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
    <form action="UpdateSupplier" name="suppliercreate" method="post">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
              更新供應商信息
            </h4>
         </div>
         <div class="modal-body" >
         请正确输入信息，确保信息正确安全！
         <br><br><br>
         <input type="hidden" name="goodsNoS" value="<%=GoodsNo1%>">
         <center>
         <table width="100%" class="table table-bordered table-hover">
         <tr>
         <th  width="30%">供應商公司名稱<input type="hidden" name="SupplierNo" value="<%=SupplierNo%>"></th>
         
         <th><input type="text"  class="form-control" value="<%=SupplierName %>" name="SupplierName" placeholder="供應商名稱" required ></th>
          </tr>
          <tr>
         <th  width="30%">新供應商聯系電話</th>
         <th><input type="text"  class="form-control" value="<%= SupplierUserPhone%>" name="SupplierUserPhone"  placeholder="新供應商聯系電話" required ></th>
          </tr>
           <tr>
         <th  width="30%">新供應商LINE</th>
         <th><input type="text"  class="form-control" value="<%=SupplierLINE %>" name="SupplierLINE"  placeholder="新供應商LINE" required ></th>
          </tr>
          <tr>
         <th  width="30%">新供應商Whatsapp</th>
         <th><input type="text"  class="form-control" value="<%=SupplierWhatsapp %>" name="SupplierWhatsapp"  placeholder="新供應商Whatsapp" required ></th>
          </tr>
          <tr>
         <th  width="30%">新供應商聯系人</th>
         <th><input type="text"  class="form-control" value="<%=SupplierUserName %>" name="SupplierUserName"   placeholder="新供應商聯系人" required ></th>
          </tr>
            <tr>
         <th  width="30%">新供應商Wechat</th>
         <th><input type="text"  class="form-control" value="<%=SupplierWechat %>" name="SupplierWechat"   placeholder="新供應商Wechat" required ></th>
          </tr>
            <tr>
         <th  width="30%">供應商公司地址</th>
         <th><input type="text"  class="form-control" value="<%=SupplierPath %>" name="SupplierPath"   placeholder="供應商公司地址 "required ></th>
          </tr>
          
        </table>
        
       </center>
       <br> <br> <br>
         </div>
     
         <div class="modal-footer">
          <button type="submit" class="btn btn-primary">
               保存
            </button>
            <button type="reset" class="btn btn-default" 
               data-dismiss="modal">取消
            </button>
           
         </div>
      </div><!-- /.modal-content -->
      </form>
</div><!-- /.modal -->
</div>

  </body>
</html>
