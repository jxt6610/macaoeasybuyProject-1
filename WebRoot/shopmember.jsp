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
    
    <title>店員管理</title>
    
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
	
	            });
	
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
		.am-accordion-gapped .am-active .am-accordion-title {
		    background-color: #ffffdb;
		    color: #f8af00;
		    }
		    .am-accordion-gapped .am-accordion-title{
		    background-color: #ffffdb;
		    color: #f8af00;
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
		  <div class="am-g" style="padding-top:115px;min-width:450px;">
		     <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="padding:0;">
		        <button id="animation-start" type="button" class="am-btn btn_s1" >
                 <span style="font-size:1.4em;">基本設置</span>
               </button>
		     </div>
		          <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">
				    <button type="button" class="btn_w3" style="border:0;">
				       <span class="btn_w4" style="float:left;">&nbsp;<img src="images/setting10.png">店鋪設置</span>
				       <span style="float:right;">已完成<span style="font-size:1.6em;color:#aeaeae;">0%</span>設置<a href="shopsetting.jsp"><img src="images/right2.png"></a></span>
				    </button> 
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">		 
				    <button type="button" class="btn_w3" style="border:0;">
				       <span class="btn_w4" style="float:left;">&nbsp;<img src="images/setting2.png">小店日誌</span>
				       <span style="float:right;">已有<span style="font-size:1.6em;color:#aeaeae;">0</span>篇日誌<a href="shopdiary.jsp"><img src="images/right2.png"></a></span>
				    </button> 
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">
                    <button type="button" class="btn_f" style="border:0;">
                      <span class="btn_w" style="float:left;">&nbsp;<img src="images/setting3_1.png">店員管理</span>
                      <span style="float:right;">已有<span style="font-size:1.6em;color:#fff;">0</span>個店員<a href="shopmember.jsp"><img src="images/right.png"></a></span>
                    </button> 
				  </div>
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;">
				    <button type="button" class="btn_w3" style="border:0;">
				      <span class="btn_w4" style="float:left;">&nbsp;<img src="images/setting4.png">操作記錄</span>
				      <span style="float:right;">有<span style="font-size:1.6em;color:#aeaeae;">0</span>筆新操作記錄<a href="shophistory.jsp"><img src="images/right2.png"></a></span>
				    </button>  
				  </div>
				  <hr data-am-widget="divider" class="am-divider am-divider-dashed" style="margin-top:8%;">
				  <div class="am-u-lg-3 am-u-md-12 am-u-sm-12" style="margin-top:1%;padding:0;">
				     <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
						data-am-accordion='{  }' style="margin:0;">
						  <dl class="am-accordion-item am-active" >
						    <dt class="am-accordion-title">加入店員<span><img src="images/down5.png" style="float:right;"></span></dt>
						    <dd class="am-accordion-bd am-collapse">
						      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
						      
						      
						       <form action="AddUserInfor" name="UserAdd1" method="post">
						      <div class="">
						           <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="padding:5px;text-align:center;">
						               <button name="" id="" type="button" class="but_21" onclick="return checksubmit();" value="" >
							                  <img src="images/setting6.png" style="margin-top:10%;">
							                  <br>
							                  <span style="text-align:center;margin-bottom:10%;">點擊拍照或選取照片</span>
						               </button><br>
						               <a style="color:#a3a3a3;">店員頭像</a>
						            </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">
						                     <span>&nbsp;&nbsp;&nbsp;店員姓名:    
							                    <input type="text" class="text5" value=""  name="UserName"  placeholder="    店員姓名:" minlength="3">
							                 </span>    
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">   
							          <span>&nbsp;&nbsp;&nbsp;性别：    
							                <input type="radio" name="UserSex" value="男">男<img src="image/loginImages/feman.png" width="5%">&nbsp;&nbsp;&nbsp; <input type="radio" name="UserSex" value="女">女<img src="image/loginImages/man.png" width="5%">    
							        </span> 
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">    
							          <span>&nbsp;&nbsp;&nbsp;店員賬號:
							                 <input type="text" class="text5" value=""  name="UserId" placeholder="    店員賬號:" minlength="3">    
							                 </span>
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">    
							          <span>&nbsp;&nbsp;&nbsp;店員密碼:
							                 <input type="password" class="text5" value="123456"  name="PassWord" placeholder="    店員密碼:" minlength="3">    
							                 </span>
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">    
							            <span>&nbsp;&nbsp;&nbsp;店員手機:
							                 <input type="text" class="text5" id="UserPhone"  name="UserPhone"  placeholder="    店員手機:" minlength="3">
							                 </span>    
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">    
							         <span>&nbsp;&nbsp;&nbsp;店員Wechat:
							                 <input type="text" class="text6" value=""  name="UserWechat" placeholder="    店員Wechat:" minlength="3">    
							         </span>
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">   
							                 <span>&nbsp;&nbsp;&nbsp;店員Whatsapp:
							                      <input type="text" class="text7" value="" name="UserWhatsapp" placeholder="    店員Wechat:" minlength="3">
							                     </span>
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;">    
											 <select class="shm_1" name="UserRole">
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
							               <select class="shm_1" name="UserProper">
                                           <option value="2">選擇屬性</option>
                                           <option value="1">離職</option>
                                          <option value="2">全職</option>
                                          <option value="3">兼職</option>
                                          </select> 
											<button type="button" class="but_22" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 750, height: 800}">設定權限</button>
												<div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
													  <div class="am-modal-dialog">
													    <div class="shm_2" style="padding-top:5px;">店員<span style="color:#ff0a4f;font-size:1.2em;">番薯</span>權限:
													      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close  style="float:right;">&times;</a>
													    </div>
													    <div class="">
													      <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding:0;" >
													        	<ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
																  am-avg-md-2 am-avg-lg-2 am-gallery-bordered" data-am-gallery="{  }">  
																  <li style="">
																     <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="" >
																	     <span style="color:#8e7e56;">信息總覽</span><br>
																	     <button type="button" class="but_11">小店首頁</button><br>
																	  </div>
																	  <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																	     <span style="color:#8e7e56;">宜買通知</span><br>
																	     <button type="button" class="but_29">宜買信息</button>
																	     <button type="button" class="but_29">團購報名</button>
																	     <button type="button" class="but_29">活動報名</button><br>
																	  </div>
																	  <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																	     <span style="color:#8e7e56;">商品管理</span><br>
																	     <button type="button" class="but_29">添加商品</button>
																	     <button type="button" class="but_29">商品列表</button>
																	     <button type="button" class="but_29">評價管理</button>
																	     <button type="button" class="but_29">上架商品</button>
																	     <button type="button" class="but_29">下架商品</button>
																	     <button type="button" class="but_29">編輯商品</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">訂單管理</span><br>
																	     <button type="button" class="but_29">待發貨</button>
																	     <button type="button" class="but_29">配貨中</button>
																	     <button type="button" class="but_29">發貨中</button>
																	     <button type="button" class="but_29">待評價</button>
																	     <button type="button" class="but_29">申請退貨</button>
																	     <button type="button" class="but_29">申請換貨</button>
																	     <button type="button" class="but_29">退貨中</button>
																	     <button type="button" class="but_29">換貨中</button>
																	     <button type="button" class="but_29">完成記錄</button>
																	     <button type="button" class="but_29">退貨記錄</button>
																	     <button type="button" class="but_29">換貨記錄</button>
																	     <button type="button" class="but_29">銷單</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">倉庫管理</span><br>
																	     <button type="button" class="but_29">缺貨表</button>
																	     <button type="button" class="but_29">報警表</button>
																	     <button type="button" class="but_29">其他補貨</button>
																	     <button type="button" class="but_29">補貨表</button>
																	     <button type="button" class="but_29">庫存變動</button>
																	   </div>
																  </li>
																  <li style="">
																       <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																         <span style="color:#8e7e56;">供應商管理</span><br>
																	     <button type="button" class="but_29">創建供應商</button>
																	     <button type="button" class="but_29">供應商列表</button>
																	     <button type="button" class="but_29">編輯供應商</button><br>
																	    </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;"> 
																	     <span style="color:#8e7e56;">廣告管理</span><br>
																	     <button type="button" class="but_29">添加廣告</button>
																	     <button type="button" class="but_29">廣告列表</button>
																	     <button type="button" class="but_29">編輯廣告</button><br>
																	    </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																	     <span style="color:#8e7e56;">推廣利器</span><br>
																	     <button type="button" class="but_29">線上推廣</button>
																	     <button type="button" class="but_29">線下推廣</button>
																	     <button type="button" class="but_29">促銷工具</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">銷售統計</span><br>
																	     <button type="button" class="but_29">流量分析</button>
																	     <button type="button" class="but_29">客戶統計</button>
																	     <button type="button" class="but_29">訂單統計</button>
																	     <button type="button" class="but_29">銷售概況</button>
																	     <button type="button" class="but_29">會員排行</button>
																	     <button type="button" class="but_29">銷售明細</button>
																	     <button type="button" class="but_29">銷售排行</button>
																	     <button type="button" class="but_29">訪問購買率</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">基本設置</span><br>
																	     <button type="button" class="but_29">店鋪設置</button>
																	     <button type="button" class="but_29">小店日誌</button>
																	     <button type="button" class="but_29">店員管理</button>
																	     <button type="button" class="but_29">操作記錄</button><br>
																       </div>
																  </li>
														    </ul>
														    </div>
														    <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="text-align:center;padding-bottom:10%;">
															       <button type="button" class="but_23">&nbsp;&nbsp;&nbsp;保存修改&nbsp;&nbsp;&nbsp;</button>
															 </div>
													    </div>
													  </div>
												</div>    
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="text-align:center;padding-bottom:10%;">
									       <button type="submit" class="but_23">&nbsp;&nbsp;&nbsp;保存修改&nbsp;&nbsp;&nbsp;</button>
									 </div>
						      </div>
						      </form>
						    </dd>
						  </dl>
						  
						</section>
				  </div>
				  <div class="am-u-lg-9 am-u-md-12 am-u-sm-12" style="margin-top:1%;padding:0;">
				        <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
						data-am-accordion='{  }' style="margin:0;">
						  <dl class="am-accordion-item am-active">
						    <dt class="am-accordion-title">店員列表<span><img src="images/down5.png" style="float:right;"></span></dt>
						    <dd class="am-accordion-bd am-collapse">
						      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
						      <div class="">
						        <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1
									  am-avg-md-2 am-avg-lg-3 am-gallery-bordered" data-am-gallery="{  }">
									  <%for(int i=0;i<userall.size();i++){ %>
									  <li style="">
							               <div class="am-u-lg-11 am-u-md-11 am-u-sm-11 "  style="padding:0;">        
							                    <a  href="shopmemberedit.jsp?userID=<%=userall.get(i).getUserId()%>" style="float:left;"><img src="images/practice1.png"></a>
	                                             <div class="am-text-middle" >
									              <%if(userall.get(i).getUserRole()==1){ %> 
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（店長）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%}else if(userall.get(i).getUserRole()==2){%>
        								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（副店長）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
    								               <%}else if(userall.get(i).getUserRole()==3){ %>
       								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（店助理）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
  								               <%} else if(userall.get(i).getUserRole()==4){%> 
    								                <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（收銀員）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%} else if(userall.get(i).getUserRole()==5){%>
      								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（倉管員）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%}else if(userall.get(i).getUserRole()==6){ %>
     								               <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（採購員）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%}else if(userall.get(i).getUserRole()==7){%>
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（海外買手）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%} else if(userall.get(i).getUserRole()==8){%>
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（導購員）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%} else if(userall.get(i).getUserRole()==9){%>
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（營業員）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%} else if(userall.get(i).getUserRole()==10){%>
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（設計師）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%}else if(userall.get(i).getUserRole()==11){ %>
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（陳列師）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%}else if(userall.get(i).getUserRole()==12){ %>
     								               <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（陳列師）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%}else{ %>
     								              <span class="" style="color:#ff0a4f;"><%=userall.get(i).getUserName() %>（送貨員）<%if(userall.get(i).getUserSex().equals("女")){ %><center><img src="image/loginImages/man.png" width="5%"></center><%}else{ %><center><img src="image/loginImages/feman.png" width="5%"></center><%} %></span><br>
     								              <%} %>
									              <span class="" style="">手機:<span class="" id=""></span></span><br>
									              <span class="" style="">微信:<span class="" id=""></span></span><br>
									              <span class="" style="">Wechat:<span class="" id=""></span></span><br> 
									             </div>
									         </div>
									         <div class="am-u-lg-1 am-u-md-1 am-u-sm-1 " style="padding:0;">
							                    <a href="shopmemberedit.jsp?userID=<%=userall.get(i).getUserId()%>" ><img src="images/right2.png"></a>
							                 </div>   
							                <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;padding:0;">    
								                  <select class="shm_1" name="UserRole">
       <%switch(userall.get(i).getUserRole()) 
{ 
   case 1: 
      %>
      <option value="1">選擇角色</option>
       <option value="1" selected="selected">店長</option>
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
      <%
       break; 
   case 2: 
        %>
          <option value="1">選擇角色</option>
         <option value="2" selected="selected">副店長</option>
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
      <%
       break; 
   case 3: 
       %>
        <option value="1">選擇角色</option>
         <option value="3" selected="selected">店助理</option>
           <option value="2">副店長</option>
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
      <%
       break; 
       case 4: 
       %>
          <option value="1">選擇角色</option>
         <option value="4" selected="selected">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="5">倉管員</option>
       <option value="6">採購員</option>
       <option value="7">海外買手</option>
       <option value="8">導購員</option>
       <option value="9">營業員</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break; 
        case 5: 
       %>
         <option value="1">選擇角色</option>
         <option value="5" selected="selected">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="6">採購員</option>
       <option value="7">海外買手</option>
       <option value="8">導購員</option>
       <option value="9">營業員</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
       case 6: 
       %>
        <option value="1">選擇角色</option>
         <option value="6" selected="selected">採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="7">海外買手</option>
       <option value="8">導購員</option>
       <option value="9">營業員</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
       case 7: 
       %>
       <option value="1">選擇角色</option>
         <option value="7" selected="selected">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="8">導購員</option>
       <option value="9">營業員</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
        case 8: 
       %>
       <option value="1">選擇角色</option>
         <option value="8" selected="selected">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="9">營業員</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
       case 9: 
       %>
        <option value="1">選擇角色</option>
         <option value="9" selected="selected">營業員</option>
         <option value="8">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="10">設計師</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
       case 10: 
       %>
       <option value="1">選擇角色</option>
         <option value="10" selected="selected">設計師</option>
         <option value="9">營業員</option>
         <option value="8">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="11">陳列師</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
        case 11: 
       %>
        <option value="1">選擇角色</option>
         <option value="11" selected="selected">陳列師</option>
         <option value="10">設計師</option>
         <option value="9">營業員</option>
         <option value="8">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="12">創意文案</option>
       <option value="13">送貨員</option>
      <%
       break;
       case 12: 
       %>
        <option value="1">選擇角色</option>
         <option value="12" selected="selected">創意文案</option>
         <option value="11">陳列師</option>
         <option value="10">設計師</option>
         <option value="9">營業員</option>
         <option value="8">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
       <option value="13">送貨員</option>
      <%
       break;
       case 13: 
       %>
       <option value="1">選擇角色</option>
         <option value="13" selected="selected">送貨員</option>
         <option value="12">創意文案</option>
         <option value="11">陳列師</option>
         <option value="10">設計師</option>
         <option value="9">營業員</option>
         <option value="8">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="5">倉管員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
      <%
       break;
   default: 
       %>
        <option value="1">選擇角色</option>
         <option value="5" selected="selected">倉管員</option>
         <option value="13">送貨員</option>
         <option value="12">創意文案</option>
         <option value="11">陳列師</option>
         <option value="10">設計師</option>
         <option value="9">營業員</option>
         <option value="8">導購員</option>
         <option value="7">海外買手</option>
         <option value="6" >採購員</option>
         <option value="4">收銀員</option>
         <option value="3">店助理</option>
         <option value="2">副店長</option>
      <%
       break; 
} %>
       </select>
      </th>
      <th>
      <select class="shm_1" name="UserProper">
       <%switch(userall.get(i).getUserProper()) 
{ 
   case 1: 
      %>
         <option value="2">選擇屬性</option>
       <option value="2">全職</option>
         <option value="1" selected="selected">離職</option>
       <option value="3">兼職</option>
      <%
       break; 
     case 2:
     %>
      <option value="2">選擇屬性</option>
       <option value="2" selected="selected">全職</option>
       <option value="1">離職</option>
       <option value="3">兼職</option>
     <%
      break; 
     case 3:
     %>
       <option value="2">選擇屬性</option>
       <option value="2">全職</option>
        <option value="1">離職</option>
       <option value="3" selected="selected">兼職</option>
      <%
       break;
   default: 
       %>
        <option value="2">選擇屬性</option>
       <option value="2" selected="selected">全職</option>
        <option value="1">離職</option>
       <option value="3" >兼職</option>
       <%
} %>
       </select>
												<button type="button" class="but_22" data-am-modal="{target: '#doc-modal-2', closeViaDimmer: 0, width: 750, height: 800}">設定權限</button>
												<div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-2">
													  <div class="am-modal-dialog">
													    <div class="shm_2" style="padding-top:5px;">店員<span style="color:#ff0a4f;font-size:1.2em;">番薯</span>權限:
													      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close  style="float:right;">&times;</a>
													    </div>
													    <div class="">
													      <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding:0;" >
													        	<ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
																  am-avg-md-2 am-avg-lg-2 am-gallery-bordered" data-am-gallery="{  }">  
																  <li style="">
																     <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="" >
																	     <span style="color:#8e7e56;">信息總覽</span><br>
																	     <button type="button" class="but_11">小店首頁</button><br>
																	  </div>
																	  <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																	     <span style="color:#8e7e56;">宜買通知</span><br>
																	     <button type="button" class="but_29">宜買信息</button>
																	     <button type="button" class="but_29">團購報名</button>
																	     <button type="button" class="but_29">活動報名</button><br>
																	  </div>
																	  <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																	     <span style="color:#8e7e56;">商品管理</span><br>
																	     <button type="button" class="but_29">添加商品</button>
																	     <button type="button" class="but_29">商品列表</button>
																	     <button type="button" class="but_29">評價管理</button>
																	     <button type="button" class="but_29">上架商品</button>
																	     <button type="button" class="but_29">下架商品</button>
																	     <button type="button" class="but_29">編輯商品</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">訂單管理</span><br>
																	     <button type="button" class="but_29">待發貨</button>
																	     <button type="button" class="but_29">配貨中</button>
																	     <button type="button" class="but_29">發貨中</button>
																	     <button type="button" class="but_29">待評價</button>
																	     <button type="button" class="but_29">申請退貨</button>
																	     <button type="button" class="but_29">申請換貨</button>
																	     <button type="button" class="but_29">退貨中</button>
																	     <button type="button" class="but_29">換貨中</button>
																	     <button type="button" class="but_29">完成記錄</button>
																	     <button type="button" class="but_29">退貨記錄</button>
																	     <button type="button" class="but_29">換貨記錄</button>
																	     <button type="button" class="but_29">銷單</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">倉庫管理</span><br>
																	     <button type="button" class="but_29">缺貨表</button>
																	     <button type="button" class="but_29">報警表</button>
																	     <button type="button" class="but_29">其他補貨</button>
																	     <button type="button" class="but_29">補貨表</button>
																	     <button type="button" class="but_29">庫存變動</button>
																	   </div>
																  </li>
																  <li style="">
																       <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																         <span style="color:#8e7e56;">供應商管理</span><br>
																	     <button type="button" class="but_29">創建供應商</button>
																	     <button type="button" class="but_29">供應商列表</button>
																	     <button type="button" class="but_29">編輯供應商</button><br>
																	    </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;"> 
																	     <span style="color:#8e7e56;">廣告管理</span><br>
																	     <button type="button" class="but_29">添加廣告</button>
																	     <button type="button" class="but_29">廣告列表</button>
																	     <button type="button" class="but_29">編輯廣告</button><br>
																	    </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">
																	     <span style="color:#8e7e56;">推廣利器</span><br>
																	     <button type="button" class="but_29">線上推廣</button>
																	     <button type="button" class="but_29">線下推廣</button>
																	     <button type="button" class="but_29">促銷工具</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">銷售統計</span><br>
																	     <button type="button" class="but_29">流量分析</button>
																	     <button type="button" class="but_29">客戶統計</button>
																	     <button type="button" class="but_29">訂單統計</button>
																	     <button type="button" class="but_29">銷售概況</button>
																	     <button type="button" class="but_29">會員排行</button>
																	     <button type="button" class="but_29">銷售明細</button>
																	     <button type="button" class="but_29">銷售排行</button>
																	     <button type="button" class="but_29">訪問購買率</button><br>
																	   </div>
																	   <div class="am-u-lg-12 am-u-md-12 am-u-sm-12"style="padding-top:10px;">  
																	     <span style="color:#8e7e56;">基本設置</span><br>
																	     <button type="button" class="but_29">店鋪設置</button>
																	     <button type="button" class="but_29">小店日誌</button>
																	     <button type="button" class="but_29">店員管理</button>
																	     <button type="button" class="but_29">操作記錄</button><br>
																       </div>
																  </li>
														    </ul>
														    </div>
														    <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="text-align:center;padding-bottom:10%;">
															       <button type="button" class="but_23">&nbsp;&nbsp;&nbsp;保存修改&nbsp;&nbsp;&nbsp;</button>
															 </div>
													    </div>
													  </div>
												</div>    
								           </div>
								       </li>
						            <%} %>
							        </ul>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12" style="text-align:center;padding-bottom:10%;">
									      
									 </div>
						      </div>
						    </dd>
						  </dl>
						  
						</section>
				  </div>
				  
		          
		</div>
	  
 </body>
 </html>
