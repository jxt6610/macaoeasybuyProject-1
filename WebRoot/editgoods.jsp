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
int goodsOid=Integer.parseInt(goodsNo0);
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>編輯商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/amazeui.min.css">
    
    
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  
  
  
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
     <script src="js/jquery-1.8.3.min.js"></script>
     <script src="js/amazeui.min.js"></script> 
          <script>    
	    $(function () {
	
	        function mobilecheck() {
	
	            var check = false;
	            (function (a) { if (/(android|ipad|playbook|silk|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))) check = true })(navigator.userAgent || navigator.vendor || window.opera);
	            return check;
	        }
	
	        var touchEvent = 'click', $modal = $('#pop-modal'), $pobg = $('#pobg'), $istar = $('#istar');
	
	
	        if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
	
	            $modal.css({ visibility: 'hidden' });
	
	            $istar.on(touchEvent, function (e) {
	
	                e.preventDefault;
	                $modal.css({ visibility: 'visible', transform: 'scale(1)', opacity: '1' });
	                $pobg.show();
	
	            });
	
	            $pobg.on(touchEvent, function (e) {
	                e.preventDefault;
	                $modal.css({ visibility: 'hidden', transform: 'scale(0.1)', opacity: '0' });
	                $(this).hide();
	
	            })
	
	        } else {
	
	            $modal.css({ display: 'none' });
	
	            $istar.on(touchEvent, function (e) {
	
	                if ($(this).hasClass("cur")) {
	                    e.preventDefault;
	                    $modal.css({ display: 'none', transform: 'scale(0.1)', opacity: '0' });
	                    $pobg.hide();
	                    $(this).removeClass('cur');
	                    return false;
	                };
	
	                e.preventDefault;
	                $modal.css({ display: 'block', transform: 'scale(1)', opacity: '1' });
	                $pobg.show();
	                $(this).addClass('cur');
	
	            });
	
	            $pobg.on(touchEvent, function (e) {
	                e.preventDefault;
	                $modal.css({ display: 'none', transform: 'scale(0.1)', opacity: '0' });
	                $(this).hide();
	                $istar.removeClass('cur');
	            });
	
	        }
	
	        $('#btop').on(touchEvent, function (e) { $('html, body').stop(false, true).animate({ scrollTop: 0 }, 'fast'); e.preventDefault; })
	
	
	        $('.container').append(' <div class="row ftiele ">' + '<p></p>' + '</div>');
	    });   
     </script>
     <style>
       ._header_img{height:80px;}
       	.am-btn-success{background-color: #fff;border:0;}
		.am-btn-success:focus,
		.am-btn-success:hover{
			background-color: #fff;
		}
		.am-nav>li.am-active>a, .am-nav>li.am-active>a:focus, .am-nav>li.am-active>a:hover{background-color:transparent;}
		.am-topbar-collapse>.am-nav>li:hover>a{background-color:#EC0043;}
		
		.am-thumbnail{
		  margin-bottom:0;
		}
		.am-gallery-item{
		  background-color:#f2f2f2;
		  border-color:#f2f2f2;
		  border:0;
		}
		.am-gallery-item{
		  height:170px;
		  border-radius:5px;
		}
     </style>
  </head>
  
  <body>
   <%ArrayList<Goods> goodEvery=GoodsManage.queryGoodsOid(goodsOid); 
%>
	     <div class="am-topbar am-header-fixed" style="background-color:#ff0a4f;height:115px;border:0;width:100%;min-width:450px;">
		    <a href="#"><img src="images/1.png"style="margin-top:0.5%;margin-left:1%;" ></a>
	
		  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}" style="margin:8%;">
		                    <span class="am-sr-only"></span><span class=""><img src="images/"></span></button>
		                    
			  <div class="am-collapse am-topbar-collapse am-topbar-right" id="doc-topbar-collapse" style="margin-top:0.8%;margin-right:8%;">
				<ul class="am-nav am-nav-pills " style="background-color:#ff0a4f;">
				  <li class="am-active"><a href="index.jsp"><img class="_header_img" src="images/2.png" alt=""></a></li>
				  <li><a href="notice.jsp"><img class="_header_img" src="images/3.png" alt=""></a></li>
				  <li><a href="goodsmanage.jsp"><img class="_header_img" src="images/4.png" alt=""></a></li>
				  <li><a href="order.jsp"><img class="_header_img" src="images/5.png" alt=""></a></li>
				  <li><a href="storage.jsp"><img class="_header_img" src="images/11.png" alt=""></a></li>
				  <li><a href="supplier.jsp"><img class="_header_img" src="images/6.png" alt=""></a></li>
				  <li><a href="ad.jsp"><img class="_header_img" src="images/7.png" alt=""></a></li>
				  <li><a href="promo.jsp"><img class="_header_img" src="images/8.png" alt=""></a></li>
				  <li><a href="chart.jsp"><img class="_header_img" src="images/9.png" alt=""></a></li>
				  <li><a href="shopsetting.jsp"><img class="_header_img" src="images/setup.png" alt=""></a></li>
				  <li><input type="text" id="doc-vld-name" placeholder="  請輸入商品編號或商品名稱關鍵字"  class="am-form-field" style="border:0;border-radius:15px;background-color:#fff;margin-top:18%;margin-bottom:10%;width:160%;"/></li>				  
				</ul>
			  </div>
		  </div>
		  <!-- Page -->
		  <form action="UpdateGoods" name="updateGoods" method="post">

      <input name="GoodsOid" type="hidden" value="<%=goodEvery.get(0).getOid()%>">
		  <div class="am-g" style="padding-top:120px;min-width:450px;">
		     <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="padding:0;">
		        <button id="animation-start" type="button" class="am-btn btn_ad" >
                 <span style="font-size:1.4em;">編輯商品</span>
                 <span style="float:left;"><a href="goodsmanage.jsp"><img src="images/left.png"></a></span>
               </button>
		     </div>
		     <div>
		        <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
					  am-avg-md-4 am-avg-lg-8 am-gallery-bordered" data-am-gallery="{  }">
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品封面圖</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品主圖</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品展示圖一</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品展示圖二</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品展示圖三(如需要)</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品展示圖四(如需要)</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品展示圖五(如需要)</a>
					  </li>
					  <li style="text-align:center;">
					    <button name="" id="" type="button" class="but_16" onclick="return checksubmit();" value="" >
				                 <img src="" style="margin-top:8%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">商品展示圖六(如需要)</a>
					  </li>
					</ul>
		     </div>
		  
		      <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="height:55px;">
		         <div class="am-u-lg-3 am-u-md-6 am-u-sm-12 text_a" style="height:55px;margin-top:20px;">    
		                 <input type="text" class="form-control"   name="GoodsName" value="<%=goodEvery.get(0).getGoodsName() %>" placeholder="    請輸入商品名稱(9字內)" minlength="3" required>    
		         </div>
		         <div class="am-u-lg-3 am-u-md-6 am-u-sm-12 text_a" style="height:55px;margin-top:20px;">     
                         <input type="text" class="form-control"   name="GoodsNo" value="<%=goodEvery.get(0).getGoodsNo() %>" placeholder="    請輸入商品編號" readonly="readonly">
		         </div>
		         <div class="am-u-lg-3 am-u-md-6 am-u-sm-12 text_a" style="height:55px;margin-top:20px;"> 
						<select name="FatherTypeName" class="form-control">
                        <option value="1">請選擇商品大分類</option>
                      <%for(int i=0;i<goodsFatherTypes.size();i++){ %>
                        <option value="<%=goodsFatherTypes.get(i).getOid()%>"><%=goodsFatherTypes.get(i).getTypeName() %></option>
                       <%} %>
                       </select>
		         </div>
		         <div class="am-u-lg-3 am-u-md-6 am-u-sm-12 text_a" style="margin-top:20px;">	             
		              <select name="ChildTypeName" class="form-control">
                     <option value="1">請選擇商品子分類</option>
                     <%for(int i=0;i<goodsChildTypes.size();i++){ %>
                     <option value="<%=goodsChildTypes.get(i).getOid()%>"><%=goodsChildTypes.get(i).getTypeName() %></option>
                      <%} %>
                    </select>
		         </div>
		         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:20px;">
		          <input type="text" class="form-control"  value="<%=goodEvery.get(0).getGoodsNote() %>" name="GoodsNote" placeholder="    請輸入商品描述(50字內)" required>
		         </div>
		         <hr data-am-widget="divider"  class="am-divider am-divider-dashed"/>
		         
		         
		         
		         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="">
		          
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;">  
			         
			           <span style="text-align:center;color:#b4b4b4;"><img src="images/one1.png">請選擇商品規格</span>
			           <div class="text_a" style="height:55px;margin-top:20px;"> 
			               <select name="ColorCh" class="form-control">
                          <option value="1">請選擇規格一</option>
                           <%for(int i=0;i<color.size();i++){ %>
                           <option value="<%=color.get(i).getOid() %>"><%=color.get(i).getColorCh() %></option>
                           <%} %>
                         </select>
			         </div>
					  <div class="text_a" style="height:55px;margin-top:20px;"> 
			               <select name="ColorEn" class="form-control">
                           <option value="1">請選擇規格二（如需要）</option>
                          <%for(int i=0;i<color.size();i++){ %>
                          <option value="<%=color.get(i).getOid()%>"><%=color.get(i).getColorEn()%></option>
                           <%} %>
                         </select>
			         </div>
					<div class="text_a" style="height:55px;margin-top:20px;"> 
			                <select name="Size" class="form-control" >
                           <option value="30">請選擇規格三（如需要）</option>
                           <option value="30">30码</option>
                           <option value="32">32码</option>
                           <option value="35">35码</option>
                             </select>
		            </div>
		            
			        </div>
		         
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;">
			          <span style="text-align:center;color:#b4b4b4;"><img src="images/two1.png">請 填 寫 此 商 品 規 格 的 資 料</span>
			          <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control"  value="<%=goodEvery.get(0).getGoodsNum() %>" name="GoodsNum" placeholder="    此規格商品之庫存量（件）:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="<%=goodEvery.get(0).getGoodsMarketPrice()%>" name="GoodsMarketPrice" placeholder="    此規格商品之採購價（澳門元）:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="<%=goodEvery.get(0).getGoodsActiveprice() %>" name="GoodsActiveprice" placeholder="    此規格商品之售價（澳門元）:" required>
			            </div>
			        </div>
		       
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;padding-bottom: 3%;">
			            <span style="text-align:center;color:#b4b4b4;"><img src="images/three1.png">請上傳此商品規格的圖片</span>
			            <br>
			            <br>
			            <button name="" type="submit" class="but_4" onclick="return checksubmit();" value="" >上傳此規格圖片</button>  
			        </div>
		        
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;padding-bottom: 3%;">
			            <span style="text-align:center;color:#b4b4b4;"><img src="images/four1.png">如需要，可添加下一规格</span>
			            <br>
			            <br>
			            <button name="" type="button" class="but_5" onclick="return checksubmit();" value="" >
			               <img src="images/add.png"><span style="text-align:center;">添加下一個商品規格</span>
			            </button>  
			        </div>
			      
		        </div>
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
		     <hr data-am-widget="divider" class="am-divider am-divider-dashed"/>
		      <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" >
			     <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" >
			          <div class="text_a" style="height:55px;margin-top:20px;"> 
							 <select name="SuppLier" class="form-control">
                            <option value="1">請選擇供應商</option>
                            <%for(int i=0;i<supplier.size();i++){ %>
                            <option value="<%=supplier.get(i).getOid()%>" onclick="createsupplier();" checked="checked"> <%=supplier.get(i).getSupplierName() %> </option> 
                            <%} %>
                           </select>
		            </div>
			     </div>
			     <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" >
			           <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商編號:<%=supplierQuery.get(0).getSupplierNo()%>" id="SupplierNo" placeholder="    創建新供應商名稱:" required>
			            </div>
			           <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商聯系電話:<%=supplierQuery.get(0).getSupplierUserPhone()%>" id="SupplierUserPhone" placeholder="    新供應商聯繫電話:" required>
			            </div>
			           <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商LINE:<%=supplierQuery.get(0).getSupplierLINE()%>" id="SupplierLINE" placeholder="    新供應商LINE:" required>
			            </div>
			     </div>
			     <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" >
			          <div class="text_a" style="height:55px;margin-top:20px;"> 
			               <select name="SuppLier" class="form-control">
                          <option value="1">請選擇供應商</option>
                          <%for(int i=0;i<supplier.size();i++){ %>
                          <option value="<%=supplier.get(i).getOid()%>" onclick="createsupplier();" checked="checked"> <%=supplier.get(i).getSupplierName() %> </option> 
                          <%} %>
                         </select>
		            </div>
			          <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商Whatsapp:<%=supplierQuery.get(0).getSupplierWhatsapp()%>" id="SupplierWhatsapp" placeholder="    新供應商Whatsapp:" required>
			          </div>
			           <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商地址:<%=supplierQuery.get(0).getSupplierPath()%>" id="SupplierPath"  placeholder="供應商地址" required>
			          </div>
			     </div>
			     <div class="am-u-lg-3 am-u-md-6 am-u-sm-0" >
			          <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商聯系人:<%=supplierQuery.get(0).getSupplierUserName()%>" id="SupplierUserName" placeholder="    新供應商聯繫人:" required>
			          </div>
			          <div class="text_a" style="height:55px;margin-top:20px;">
	                         <input type="text" class="form-control" value="供應商Wechat:<%=supplierQuery.get(0).getSupplierWechat()%>" id="SupplierWechat"  placeholder="    新供應商Wechat:" required>
			          </div>
			     </div>
		     </div>
		     <hr data-am-widget="divider" style="margin-top:14%;" class="am-divider am-divider-dashed"/>
		     <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="text-align:center;">
			       <button type="button" class="but_6">&nbsp;&nbsp;說&nbsp;明&nbsp;&nbsp;</button>&nbsp;&nbsp;
			       <button type="button" class="but_7">&nbsp;&nbsp;下&nbsp;架&nbsp;中&nbsp;&nbsp;</button>&nbsp;&nbsp;
			       <button type="submit" class="but_8">&nbsp;&nbsp;&nbsp;保存並發佈&nbsp;&nbsp;&nbsp;</button>
			 </div>
		     <br>
		     <br>
		     <br>
		     <hr data-am-widget="divider"  class="am-divider am-divider-dashed"/>
		   </div>     
		</div>
	  </form>
	  
	  
 </body>
 </html>
