<%@page import="macaoeasybuy.tool.pagebean.DataTimeNumber"%>
<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.dao.goodsdao.GoodsManage"%>
<%@page import="macaoeasybuy.bean.goods.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
ArrayList<Color> color=GoodsManage.queryAllColor();
ArrayList<Supplier> supplier=GoodsManage.queryAllSupplier();
ArrayList<GoodsTypes> goodsFatherTypes=GoodsManage.queryAllGoodsFatherTypes();
ArrayList<GoodsTypes> goodsChildTypes=GoodsManage.queryAllGoodsChildTypes();
int GoodsSize=GoodsManage.queryAllGoods().size();
int FatherNum=8;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </head>
  
  
  <body>


<div id="container_products" >
 <form action="AddGoods" name="addGoods" method="post">
   <table class="table table-bordered table-hover" width="100%" height="10%">
   <tr>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
   <td width="12.5%"><button type="button" class="btn-lg">點擊拍照或者選取照片</button></td>
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
   <tr>
   <th width="25%"><input type="text"  class="form-control" value=""  name="GoodsName" placeholder="請輸入商品名稱（九字以內）" required></th>
   <th width="25%"><input type="text"  class="form-control" value="<%=DataTimeNumber.GoodsAccount(FatherNum, GoodsSize)%>"readonly="readonly"  name="GoodsNo" placeholder="請輸入商品編號牌" required></th>
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
   <tr><td colspan="4"><input type="text"  class="form-control" name="GoodsNote"  value="" placeholder="請輸入商品描述" required></td></tr>
   </table>
   
   <table class="table table-bordered table-hover" width="100%" id="createtable">
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
    <select name="Size" class="form-control">
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
   <td><input type="text"  class="form-control" value="" name="GoodsNum" placeholder="此規格商品之庫存量" required></td>
   <td width="10%">（件）</td>
   </tr>
    <tr>
   <td width="35%">此規格商品之采購價</td>
   <td><input type="text"  class="form-control" value="" name="GoodsMarketPrice" placeholder="此規格商品之采購價" required></td>
   <td width="10%">￥0.00</td>
   </tr>
    <tr>
   <td width="35%">此規格商品之售價</td>
   <td><input type="text"  class="form-control" value="" name="GoodsActiveprice" placeholder="此規格商品之售價" required></td>
   <td width="10%">￥0.00</td>
   </tr>
   </table>
   </th>
   <td><center><input type="file" value="" name="imagefile" class="table table-bordered table-hover"><button type="button" class="btn-lg0">上傳<br>此規格圖片</button></center></td>
   <th><center><button type="button" class="btn-warning" id="add_goods_guige" onclick="NewTable();"><img alt="添加規格" src="image/loginImages/add.png">添加下一个规格<br>商品规格</button></center></th>
   </tr>
   </table>
   
     <table class="table table-bordered table-hover" width="100%">
   <tr>
   <td width="25%">
    <select name="SuppLier" class="form-control" id="suppLierid" >
   <option value="1">請選擇供應商</option>
   <%for(int i=0;i<supplier.size();i++){ %>
   <option value="<%=supplier.get(i).getOid()%>" onclick="createsupplier();"><%=supplier.get(i).getSupplierName() %></option>
   <%} %>
   </select>
   <script  type="text/javascript">
  function createsupplier(){
               var num=  document.getElementById("suppLierid").value;
                 document.getElementById("SupplierNo").value=<%=supplier.get(3).getSupplierNo()%>;
                 document.getElementById("SupplierUserPhone").value=<%=supplier.get(3).getSupplierUserPhone()%>;
                 document.getElementById("SupplierLINE").value=<%=supplier.get(3).getSupplierLINE()%>;
                 document.getElementById("SupplierState").value=<%=supplier.get(3).getSupplierState()%>;
                 document.getElementById("SupplierWhatsapp").value=<%=supplier.get(3).getSupplierWhatsapp()%>;
                 document.getElementById("SupplierPath").value=<%=supplier.get(1).getSupplierPath()%>;
                 document.getElementById("SupplierUserName").value=<%=supplier.get(3).getSupplierName()%>;
                 document.getElementById("SupplierWechat").value=<%=supplier.get(3).getSupplierWechat()%>;
                 
        }
      	</script>
   <button type="button" id="createSupplier" class="btn-createSupplier" data-toggle="modal" data-target="#myModal">創建新供應商</button>
   </td>
   <td width="25%">
   <input type="text"  class="form-control" value="" id="SupplierNo"  placeholder="供應商編號" required disabled="disabled">
   <input type="text"  class="form-control" value="" id="SupplierUserPhone" placeholder="供應商聯系電話" required disabled="disabled">
   <input type="text"  class="form-control" value="" id="SupplierLINE"  placeholder="供應商LINE" required disabled="disabled">
   </td>
   <td width="25%">
    <input type="text"  class="form-control" value="" id="SupplierState"  placeholder="供應商狀態" required disabled="disabled">
   <input type="text"  class="form-control" value="" id="SupplierWhatsapp"  placeholder="供應商Whatsapp" required disabled="disabled">
   <input type="text"  class="form-control" value="" id="SupplierPath"  placeholder="供應商地址" required disabled="disabled">
   </td>
   <td width="25%">
   <input type="text"  class="form-control" value="" id="SupplierUserName" placeholder="供應商聯系人" required disabled="disabled">
   <input type="text"  class="form-control" value="" id="SupplierWechat"  placeholder="供應商Wechat" required disabled="disabled">
   </td>
   </tr>
   </table>
   
     <table class="table table-bordered table-hover" width="100%">
   <tr>
   <th width="30%"></th>
   <th width="30%">
   <center>
   <button type="button" class="btn-info0" id="btn-info0">說明</button>
   <button type="button" class="btn-infodown" id="btn-info0">下架中</button>
   <button type="submit" class="btn-infopull" id="btn-infoctrl_s" >保存並發布</button>
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
    <form action="CreateSupplier" name="suppliercreate" method="post">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
              創建新供應商
            </h4>
         </div>
         <div class="modal-body" >
         请正确输入信息，确保信息正确安全！
         <br><br><br>
         <center>
         <table width="100%" class="table table-bordered table-hover">
         <tr>
         <th  width="30%">供應商公司名稱</th>
         <th><input type="text"  class="form-control" value="" name="SupplierName" placeholder="供應商名稱" required ></th>
          </tr>
          <tr>
         <th  width="30%">新供應商聯系電話</th>
         <th><input type="text"  class="form-control" value="" name="SupplierUserPhone"  placeholder="新供應商聯系電話" required ></th>
          </tr>
           <tr>
         <th  width="30%">新供應商LINE</th>
         <th><input type="text"  class="form-control" value="" name="SupplierLINE"  placeholder="新供應商LINE" required ></th>
          </tr>
          <tr>
         <th  width="30%">新供應商Whatsapp</th>
         <th><input type="text"  class="form-control" value="" name="SupplierWhatsapp"  placeholder="新供應商Whatsapp" required ></th>
          </tr>
          <tr>
         <th  width="30%">新供應商聯系人</th>
         <th><input type="text"  class="form-control" value="" name="SupplierUserName"   placeholder="新供應商聯系人" required ></th>
          </tr>
            <tr>
         <th  width="30%">新供應商Wechat</th>
         <th><input type="text"  class="form-control" value="" name="SupplierWechat"   placeholder="新供應商Wechat" required ></th>
          </tr>
            <tr>
         <th  width="30%">供應商公司地址</th>
         <th><input type="text"  class="form-control" value="" name="SupplierPath"   placeholder="供應商公司地址 "required ></th>
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

<script>
 var j=0
  function NewTable(){
  j ++
  R = createtable.insertRow()
  C = R.insertCell()
  C.innerHTML = "   <select name='ColorCh' class='form-control'><option value='1'>請選擇規格一</option><%for(int i=0;i<color.size();i++){ %>"+
   "<option value='<%=color.get(i).getOid() %>'><%=color.get(i).getColorCh() %></option> <%} %></select> "+
   " <select name='ColorEn' class='form-control'> <option value='1'>請選擇規格二（如需要）</option> <%for(int i=0;i<color.size();i++){ %>"+
   "<option value='<%=color.get(i).getOid()%>'><%=color.get(i).getColorEn()%></option> <%} %></select>"+
   " <select name='Size' class='form-control'><option value='30'>請選擇規格三（如需要）</option>"+
   "<option value='30'>30码</option> <option value='32'>32码</option><option value='35'>35码</option></select>"
  C = R.insertCell()
  C.innerHTML = " <table class='table table-bordered table-hover' width='100%'><tr> <td width='35%''>此規格商品之庫存量</td>  <td><input type='text'   value='' placeholder='此規格商品之庫存量' required></td><td width='10%'>（件）</td>"+
  " </tr>  <tr><td width='35%''>此規格商品之采購價</td> <td><input type='text'  placeholder='此規格商品之采購價'></td> <td >￥0.00</td>"+
  " </tr> <tr> <td >此規格商品之售價</td> <td><input type='text'  placeholder='此規格商品之售價' ></td><td>￥0.00</td></tr></table>"
  C = R.insertCell()
  C.innerHTML = "<center><button type='button' class='btn-lg0'>上傳<br>此規格圖片</button></center>"
  C = R.insertCell()
  C.innerHTML = "<input type='button'  value='删除' class='btn-lg0' onclick='table_delete(this)'>"
 
 }
 function deleteRow1(obj){
  alert(obj.parentElement.parentElement.rowIndex+1);
 // createtable.deleteRow(obj.parentElement.parentElement.rowIndex);
  createtable.deleteRow(obj.parentElement.parentElement.rowIndex);
 }
  function table_delete(obj) {//删除

       // window.open(encodeURI(url + "?userName=" + userName));
        var r=confirm("确定删除吗？");
           if(r==false){
       return false;
         }else{
           createtable.deleteRow(obj.parentElement.parentElement.rowIndex);
return true;
}

    }
</script>

  </body>
</html>
