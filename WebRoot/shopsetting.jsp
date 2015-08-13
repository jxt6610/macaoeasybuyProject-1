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
    
    <title>店鋪設置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/amazeui.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/addExter.css" rel="stylesheet">
  <script src="jquery/2.0.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    
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
	     <div class="am-topbar am-header-fixed" style="background-color:#ff0a4f;height:115px;border:0;width:100%;min-width:450px;">
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
		  <form action="StoreServlet" name="store" method="post">
		  <div class="am-g" style="padding-top:115px;min-width:450px;">
		     <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="padding:0;">
		        <button id="animation-start" type="button" class="am-btn btn_s1" >
                 <span style="font-size:1.4em;">基本設置</span>
               </button>
		     </div>
		          <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">
				    <button type="button" class="btn_f" style="border:0;">
				       <span class="btn_w" style="float:left;">&nbsp;<img src="images/setting1.png">店鋪設置</span>
				       <span style="float:right;">已完成<span style="font-size:1.6em;color:#fff;">0%</span>設置<a href="shopsetting.jsp"><img src="images/right.png"></a></span>
				    </button> 
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">		 
				    <button type="button" class="btn_w3" style="border:0;">
				       <span class="btn_w4" style="float:left;">&nbsp;<img src="images/setting2.png">小店日誌</span>
				       <span style="float:right;">已有<span style="font-size:1.6em;color:#aeaeae;">0</span>篇日誌<a href="shopdiary.jsp"><img src="images/right2.png"></a></span>
				    </button> 
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">
                    <button type="button" class="btn_w3" style="border:0;">
                      <span class="btn_w4" style="float:left;">&nbsp;<img src="images/setting3.png">店員管理</span>
                      <span style="float:right;">已有<span style="font-size:1.6em;color:#aeaeae;">0</span>個店員<a href="shopmember.jsp"><img src="images/right2.png"></a></span>
                    </button> 
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">
				    <button type="button" class="btn_w3" style="border:0;">
				      <span class="btn_w4" style="float:left;">&nbsp;<img src="images/setting4.png">操作記錄</span>
				      <span style="float:right;">有<span style="font-size:1.6em;color:#aeaeae;">0</span>筆新操作記錄<a href="shophistory.jsp"><img src="images/right2.png"></a></span>
				    </button>  
				  </div>
				  <hr data-am-widget="divider" class="am-divider am-divider-dashed"/ style="margin-top:8%;">
				  
		          <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="">
		          
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;">  
			            <div class="am-u-lg-8 am-u-md-8 am-u-sm-8" style="padding:5px;">
			               <button name="" id="" type="button" class="but_15" onclick="return checksubmit();" value="" >
				                 <img src="images/setting5.png" style="margin-top:10%;">
				                 <br>
				                 <span style="text-align:center;margin-bottom:10%;">點擊選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">店面Logo圖</a>
			            </div>
			            <div class="am-u-lg-4 am-u-md-4 am-u-sm-4" style="padding:5px;">
			               <button name="" id="" type="button" class="but_15" onclick="return checksubmit();" value="" >
				                  <img src="images/setting6.png" style="margin-top:10%;">
				                  <br>
				                  <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
			               </button>
			               <a style="color:#a3a3a3;">店主頭像</a>
			            </div>
			        </div>
		         
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;">
			          
			          <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=store.getStoreId() %>"  title="修改小店登入賬號" name="StoreId"  placeholder="    修改小店登入賬號:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=user.getPassWord()%>"  title="修改小店登入密碼" name="PassWord" placeholder="    修改小店登入密碼:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=user.getUserId()%>"  name="UserId" placeholder="    我的買家身份登入賬號:" required>
			            </div>
			        </div>
		       
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;padding-bottom: 3%;">
			             <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=store.getStoreName()%>"  name="StoreName"   placeholder="    我的宜買小店名稱:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=store.getStoreSecondName()%>"  name="StoreSecondName" placeholder="    我的暱稱(宜買店主):" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:2%;float:left;">
			            性别：
			             <%if(user.getUserSex().equals("男")){ %>
      <span style="height:55px;">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="UserSex" value="男" checked="checked">男<img src="image/loginImages/feman.png" width="5%">&nbsp;&nbsp;&nbsp; 
      <input type="radio" name="UserSex" value="女" >女<img src="image/loginImages/man.png" width="5%"></span>
     <%}else{ %>
        <span style="height:55px;">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="UserSex" value="男" >男<img src="image/loginImages/feman.png" width="5%">&nbsp;&nbsp;&nbsp; 
      <input type="radio" name="UserSex" value="女" checked="checked">女<img src="image/loginImages/man.png" width="5%"></span>
     <%} %>
			            </div>
			              
			        </div>
		        
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12 " style="text-align:center;padding-bottom: 3%;">	          
			             
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control"  value="<%=store.getStoreOnlyId()%>"  name="StoreOnlyId"  placeholder="    我的店鋪專屬編號:" readonly="readonly">
			            </div>
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=store.getStoreDescribe()%>"  name="StoreDescribe" placeholder="    我的店鋪描述（20字內）:" required>
			            </div>
						<select class="form-control" name="GoodsType" style="margin-top:1%;">
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
			        </div>
			      
		        </div>
		        <hr data-am-widget="divider" class="am-divider am-divider-dashed" style=""/>
		        <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="">
		          
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;">  
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=user.getUserName()%>"  name="UserName"  placeholder="    我的中/英文名字:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=user.getUserPhone()%>"  name="UserPhone" placeholder="    我的聯繫電話:" required>
			            </div>
		            
			        </div>
		         
			        <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="text-align:center;">
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control" value="<%=user.getUserWhatsapp()%>"  name="UserWhatsapp" placeholder="    我的Whatsapp:" required>
			            </div>
			            <div class="text_a" style="height:55px;margin-top:1%;">
	                         <input type="text" class="form-control"  value="<%=user.getUserWechat()%>"  name="UserWechat" placeholder="    我的微信號:" required>
			            </div>
			        </div>
		       
			        <div class="am-u-lg-6 am-u-md-6 am-u-sm-12" style="text-align:center;padding-bottom: 3%;">
			            <div class="am-u-lg-6 am-u-md-6 am-u-sm-12" style="padding:0;">
				              <input type="text" class="text2"  placeholder="是否有實體店鋪：">
				               <%if(store.getStoreIsNo()==1) {%>
				               <input type="hidden" name="StoreIsNo" value="1">
                               <button type="button" class="but_22" style="background-color: #D2691E;">有實體店鋪</button>
				              <button type="button" class="but_22">無實體店鋪</button>
                            <%}else{ %>
                            <input type="hidden" name="StoreIsNo" value="2">
                            <button type="button" class="but_22">有實體店鋪</button>
				              <button type="button" class="but_22" style="background-color: #D2691E;">無實體店鋪</button>
                              <%} %>
			            </div>
			            <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="padding:0;">
				            <div class="text_a" style="height:55px;margin-top:2%;">
		                        <input type="text" class="form-control"  value="<%=store.getStoreIsAddress()%>"  name="StoreIsAddress" placeholder="    宜買店鋪地址:(若有實體店鋪，只要填寫地址，宜買會提供推廣服務)" required>
				            </div>
			             </div> 
			        </div>
		        
			        
			      
		        </div>
		        <hr data-am-widget="divider" class="am-divider am-divider-dashed" style=""/>
		        <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="text-align:center;padding-bottom:10%;">
			       <button type="submit" class="but_14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保存修改&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
			    </div>
		</div>
	  </form>
 </body>
 </html>
