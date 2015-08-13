<%@page import="macaoeasybuy.bean.login.User"%>
<%@page import="macaoeasybuy.dao.goodsdao.GoodsManage"%>
<%@page import="macaoeasybuy.bean.goods.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("user");
ArrayList<Goods>goodsList=GoodsManage.queryAllGoodsDESC();//降序
ArrayList<Goods>goodsnum=GoodsManage.queryAllGoodNumDESC();//降序
ArrayList<Goods>goodsNo=GoodsManage.queryAllGoodNOASC();//降序
ArrayList<Goods>goodsPrice=GoodsManage.queryAllGoodGoodsActivepriceASC();//降序
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/amazeui.min.css">
   
    <link rel="stylesheet" type="text/css" href="css/style.css">
   
     <script src="js/jquery-1.8.3.min.js"></script>
     <script src="js/amazeui.min.js"></script> 
     
     <style>
       ._header_img{height:80px;}
       	.am-btn-success{background-color: #fff;border:0;}
		.am-btn-success:focus,
		.am-btn-success:hover{
			background-color: #fff;
		}
		.am-nav>li.am-active>a, .am-nav>li.am-active>a:focus, .am-nav>li.am-active>a:hover{background-color:transparent;}
		.am-topbar-collapse>.am-nav>li:hover>a{background-color:#EC0043;}
		.word{
		  float:right;
		  padding-top:12px;
		}
		 .word1{
		  padding-top:12px;
		  color:#7fce0e;
		  font-size:30px;
		}
		.word2{
		  padding-top:12px;
		  color:#b0b0b0;
		  font-size:30px;
		}
		.word3{
		  padding-top:12px;
		  color:#7fce0e;
		  font-size:30px;
		}
		.am-thumbnail{
		  margin-bottom:0;
		}
		
     </style>
  </head>
  
  <body >
	     <div class="am-topbar am-header-fixed" style="background-color:#ff0a4f;height:115px;border:0;width:100%;min-width:485px;">
		    <a href="#"><img src="images/1.png"style="margin-top:0.5%;margin-left:1%;" ></a>
	
		  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}" style="margin:8%;">
		                    <span class="am-sr-only"></span> <span class=""><img src="images/"></span></button>
		                    
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
		  <div style="padding-top:120px;min-width:485px;">
		     <ul class="am-avg-sm-1 am-avg-md-2 am-avg-lg-4 am-thumbnails"style="padding-left:5px;padding-right:5px;">
				  <li class="am-thumbnail li_f">今日銷售毛利<span class="word1" style="margin-left:50%;">0</span><span class="word">元</span></li>
				  <li class="am-thumbnail li_f">今日銷售額<span class="word1" style="margin-left:50%;">0</span><span class="word">元</span></li>
				  <li class="am-thumbnail li_f">今日銷售單數<span class="word1" style="margin-left:50%;">0</span><span class="word">單</span></li>
				  <li class="am-thumbnail li_f">今日訪客量<span class="word1" style="margin-left:50%;">0</span><span class="word">個</span></li>
				  
				  <li class="am-thumbnail li_s">今日發貨單數<span class="word2" style="margin-left:50%;">0</span><span class="word">單</span></li>
				  <li class="am-thumbnail li_s">今日配貨單數<span class="word2" style="margin-left:50%;">0</span><span class="word">單</span></li>
				  <li class="am-thumbnail li_s">今日進貨單數<span class="word2" style="margin-left:50%;">0</span><span class="word">單</span></li>
				  <li class="am-thumbnail li_s">今日退換貨單數<span class="word2" style="margin-left:50%;">0</span><span class="word">單</span></li>
				  
				  <li class="am-thumbnail li_t">昨日銷售毛利<span class="" style="color:#ff0a4f;font-size:30px;margin-left:50%;">0</span><span class="word">元</span></li>
				  <li class="am-thumbnail li_t">昨日銷售額<span class="word3" style="margin-left:50%;">0</span><span class="word">元</span></li>
				  <li class="am-thumbnail li_t">昨日銷售單數<span class="word2" style="margin-left:50%;">0</span><span class="word">單</span></li>
				  <li class="am-thumbnail li_t">昨日訪客量<span class="word2" style="margin-left:50%;">0</span><span class="word">個</span></li>
				</ul>
				<div class="am-g">
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="padding:0;">
				       <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="background-color:#ff0a4f;height:45px;padding-left:3px;">
				         <span style="font-size:23px;color:#fff;">本月销量前三位<span style="float:right;">本月共售出<span>0</span>件<img src="images/down.png"></span></span>
				       </div>
				        <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1
									  am-avg-md-1 am-avg-lg-1 am-gallery-bordered" data-am-gallery="{  }">
									  <%for(int i=0;i<3;i++){ %>
						  <li style="margin-top:2%;">
					           <div class="am-u-lg-4 am-u-md-4 am-u-sm-4">
					              <img src="images/practice.png"style="">
					           </div>
					           <div class="am-u-lg-6 am-u-md-6 am-u-sm-6">
					             <div class="am-text-middle">
					              <span class="" style=""><%=goodsList.get(i).getGoodsName() %></span><br>
					              <span class="" style="color:#c3b9b5;">編號:<span class=""><%=goodsList.get(i).getGoodsNo() %></span></span><br>
					              <span class="" style="color:#c3b9b5;">售價: mop<span class=""><%=goodsList.get(i).getGoodsActiveprice()%></span></span><br>
					              <span class="" style="color:#c3b9b5;">售出:<span class="" style="color:#88d11e;"><%=goodsList.get(i).getGoodsMarketPrice()%></span>件/餘<span class="" style="color:#88d11e;"><%=goodsList.get(i).getGoodsNum()%></span>件</span>
					             </div>
					           </div>
					           <div class="am-u-lg-2 am-u-md-2 am-u-sm-2">
					             <a href="goodsmanage.jsp">
					               <img src="images/right2.png" style="margin-top:100%;">
					             </a>
					           </div>
				            </li>
				            <%} %>
				            
				           
				          </ul>   
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="padding:0;">
				       <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="background-color:#ff0a4f;height:45px;padding-left:3px;">
				         <span style="font-size:23px;margin-top:1%;color:#fff;">本月销量最後三位<span style="float:right;"><img src="images/down.png" style="margin-top:15%;"></span></span>
				       </div>
				       <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1
									  am-avg-md-1 am-avg-lg-1 am-gallery-bordered" data-am-gallery="{  }">
									  <%for(int i=0;i<3;i++){ %>
						  <li style="margin-top:2%;">
					           <div class="am-u-lg-4 am-u-md-4 am-u-sm-4">
					              <img src="images/practice.png"style="">
					           </div>
					           <div class="am-u-lg-6 am-u-md-6 am-u-sm-6">
					             <div class="am-text-middle">
					              <span class="" style=""><%=goodsnum.get(i).getGoodsName() %></span><br>
					              <span class="" style="color:#c3b9b5;">編號:<span class=""><%=goodsnum.get(i).getGoodsNo() %></span></span><br>
					              <span class="" style="color:#c3b9b5;">售價: mop<span class=""><%=goodsnum.get(i).getGoodsActiveprice() %></span></span><br>
					              <span class="" style="color:#c3b9b5;">售出:<span class="" style="color:#88d11e;"><%=goodsnum.get(i).getGoodsMarketPrice()%></span>件/餘<span class="" style="color:#88d11e;"><%=goodsnum.get(i).getGoodsNum()%></span>件</span>
					             </div>
					           </div>
					           <div class="am-u-lg-2 am-u-md-2 am-u-sm-2">
					             <a href="goodsmanage.jsp">
					                <img src="images/right2.png" style="margin-top:100%;">
					             </a>
					           </div>
				            </li>
				            <%} %>
				            
				          </ul>  
				       
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="padding:0;">
				       <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="background-color:#ff0a4f;height:45px;padding-left:3px;">
				         <span style="font-size:23px;color:#fff;">本月庫存最多前三位<span style="float:right;"><img src="images/down.png"style="margin-top:13%;"></span></span>
				       </div>
				       <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1
									  am-avg-md-1 am-avg-lg-1 am-gallery-bordered" data-am-gallery="{  }">
									    <%for(int i=0;i<3;i++){ %>
						  <li style="margin-top:2%;">
					           <div class="am-u-lg-4 am-u-md-4 am-u-sm-4">
					              <img src="images/practice.png"style="">
					           </div>
					           <div class="am-u-lg-6 am-u-md-6 am-u-sm-6">
					             <div class="am-text-middle">
					              <span class="" style=""><%=goodsPrice.get(i).getGoodsName() %></span><br>
					              <span class="" style="color:#c3b9b5;">編號:<span class=""><%=goodsPrice.get(i).getGoodsNo() %></span></span><br>
					              <span class="" style="color:#c3b9b5;">售價: mop<span class=""><%=goodsPrice.get(i).getGoodsActiveprice()%></span></span><br>
					              <span class="" style="color:#c3b9b5;">售出:<span class="" style="color:#88d11e;"><%=goodsPrice.get(i).getGoodsMarketPrice()%></span>件/餘<span class="" style="color:#88d11e;"><%=goodsPrice.get(i).getGoodsNum() %></span>件</span>
					             </div>
					           </div>
					           <div class="am-u-lg-2 am-u-md-2 am-u-sm-2">
					             <a href="goodsmanage.jsp">
					                <img src="images/right2.png" style="margin-top:100%;">
					             </a>
					           </div>
				            </li>
				            <%} %>
				            
				          </ul>  
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="background-color:#fff7ee;height:550px;">
				          <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1
									  am-avg-md-1 am-avg-lg-1 am-gallery-bordered" data-am-gallery="{  }">
									  
									  <li style="">
							               <div class="am-u-lg-4 am-u-md-4 am-u-sm-4 "  style="">        
							                    <a href="#"style="float:left;"><img src="images/practice1.png"style="width:100%;"></a>
							                </div>
							                <div class="am-u-lg-7 am-u-md-7 am-u-sm-7 "  style="padding:0;"> 
	                                             <div class="am-text-middle" style="font-size:1.2em;">
									              <span class="" style="color:#ff0a4f;">Envy(店主)</span><br>
									              <span class="" style=""><span class="" id="" style="color:#a8a8a8;">登入</span></span><br>
									                <button type="button" class="but_25">上線中</button>  
												  <a href="Login.jsp"> <button type="button" class="but_26"  onclick="return singOut()">登出平台</button>  </a> 
												     <script  type="text/javascript">
                                                   function singOut() {//退出

                                                var r=confirm("确定修改吗？");
                                                 if(r==false){
                                                 return false;
                                                  }else{
                                              
                                                 return true;
                                                  }

                                                    }
                                                  </script>
									             </div>
									         </div>
									         <div class="am-u-lg-1 am-u-md-1 am-u-sm-1 " style="padding:0;">
							                    <a href="shopmember.jsp" ><img src="images/right2.png"></a>
							                 </div>   
							                
								       </li>
								       <hr data-am-widget="divider" style="" class="am-divider am-divider-dashed"/>
								       <li style="">
							               <div class="am-u-lg-4 am-u-md-4 am-u-sm-4 "  >        
							                    <a href="#"style="float:left;"><img src="images/practice1.png"style="width:100%;"></a>
							                </div>
							                <div class="am-u-lg-7 am-u-md-7 am-u-sm-7 "  style=""> 
	                                             <div class="am-text-middle" style="">
									              <span class="" style="color:#ff0a4f;">Envy(店主)</span><br>
									              <span class="" style=""><span class="" id="" style="color:#a8a8a8;">登入</span></span><br>
									             </div>
									         </div>
									         <div class="am-u-lg-1 am-u-md-1 am-u-sm-1 " style="padding:0;">
							                    <a href="shopmember.jsp" ><img src="images/right2.png"></a>
							                 </div>   
							                
								       </li>
							             
							             <li style="">
							               <div class="am-u-lg-4 am-u-md-4 am-u-sm-4 "  style="">        
							                    <a href="#"style="float:left;"><img src="images/practice1.png" style="width:100%;"></a>
							                </div>
							                <div class="am-u-lg-7 am-u-md-7 am-u-sm-7 "  style=""> 
	                                             <div class="am-text-middle" style="">
									              <span class="" style="color:#ff0a4f;">Envy(店主)</span><br>
									              <span class="" style=""><span class="" id="" style="color:#a8a8a8;">登入</span></span><br>
									             </div>
									         </div>
									         <div class="am-u-lg-1 am-u-md-1 am-u-sm-1 " style="padding:0;">
							                    <a href="shopmember.jsp" ><img src="images/right2.png"></a>
							                 </div>   
							                
								       </li>
						            </ul>
				                   

				        
				  </div>
				</div>
		  </div>
		  <!-- footer -->
		  <footer data-am-widget="footer" class="am-footer am-footer-default" data-am-footer="{  }" style="background-color:#ff0a4f;height:90px;">
		      <div class="am-footer-miscs " style="color:#fff;font-size:0.9em;">
		         <p>宜買生活百貨（澳門）有限公司版權所有<br>
		         Copyright reserved by easyBuy Department Stores ( Macao ) Ltd.</p>
		      </div>
		  </footer>
 </body>
 </html>
