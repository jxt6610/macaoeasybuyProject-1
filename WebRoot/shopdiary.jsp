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
    
    <title>小店日誌</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/amazeui.min.css"> 
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
	  @media only screen and (max-width: 1590px) {
		    
		}
     </style>
  </head>
  
  <body>
	     <div class="am-topbar am-header-fixed" style="background-color:#ff0a4f;height:115px;border:0;width:100%;min-width:450px;" id="header">
		    <a href="#"><img src="images/1.png"style="margin-top:0.5%;margin-left:1%;" ></a>
	
		      <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}" style="margin:8%;" id="header_l">
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
				  <li>
				      <input type="text" id="doc-vld-name" placeholder="  請輸入商品編號或商品名稱關鍵字"  class="am-form-field" style="border:0;border-radius:15px;background-color:#fff;margin-top:18%;margin-bottom:10%;width:160%;"/>
				  </li>				  
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
				    <button type="button" class="btn_f" style="border:0;">
				       <span class="btn_w" style="float:left;">&nbsp;<img src="images/setting11.png">小店日誌</span>
				       <span style="float:right;">已有<span style="font-size:1.6em;color:#fff;">0</span>篇日誌<a href="shopdiary.jsp"><img src="images/right.png"></a></span>
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
				  <hr data-am-widget="divider" class="am-divider am-divider-dashed" style="margin-top:8%;">
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;padding:0;">
				     <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
						data-am-accordion='{  }' style="margin:0;">
						  <dl class="am-accordion-item am-active" >
						    <dt class="am-accordion-title" style="font-size:1.2em;">創建日誌<span><img src="images/down5.png" style="float:right;"></span></dt>
						    <dd class="am-accordion-bd am-collapse">
						      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
						        <form action="ShopLogManage" name="LogAdd" method="post">
						      <div class="">
						            <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:1%;font-size:1.2em;">
							           <input type="text" class="text1" value="" name="LogTitle"  placeholder="    我的日誌標題">
							         </div>
						            
						            <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 " style="margin-top:1%;">
									      <textarea class="text4" rows="5" id="" name="LogBody"   placeholder="    我的日誌內容"></textarea>
							         </div>
							         <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:3%;">
							             <button type="button" class="but_30" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 540}">相關參與人員</button>
							             <div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
													  <div class="am-modal-dialog">
														   <div class="shm_3" style="padding-top:5px;">勾選之參與者可看到您發佈的日誌
														      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close  style="float:right;">&times;</a>
														    </div>
														    <hr>
														     <table style="width:100%;text-align:center;" class="table table-bordered table-hover">
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
														     <div style="background-color:#f9fddc;text-align:center;    margin-top: 200px;">
														       <button type="button" class="but_31">確定保存</button>
			                                                   <button type="button" class="but_32">取消保存</button>
			                                                 </div>
													  </div>
										 </div>
							         </div>
							          <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 text_a" style="margin-top:10px;font-size:1.2em;">    
											<select class="shm_1" name="LogStatue">
                                            <option value="1">選擇狀態</option>
                                            <option value="1">在辦事宜</option>
                                            <option value="2">待辦事宜</option>
                                            <option value="3">完成事宜</option>
                                             </select>
							               <select class="form-control" name="LogLevel">
                                           <option value="1">普通日志</option>
                                           <option value="2">緊急日志</option>
                                            </select>
											<button type="submit" class="but_24">保存修改</button>    
							         </div>
						      </div>
						      </form>
						    </dd>
						  </dl>
						  
						</section>
				  </div>
				    <form action="UpdateLogStstueDone" name="wancheng" method="post">
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;padding:0;">
				     <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
						data-am-accordion='{  }' style="margin:0;">
						  <dl class="am-accordion-item am-active" >
						    <dt class="am-accordion-title" style="font-size:1.2em;">在辦事宜<span><img src="images/down5.png" style="float:right;"></span></dt>
						    <dd class="am-accordion-bd am-collapse">
						      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
						      <div class="">
						           <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
										data-am-accordion='{  }'>
										<%for(int i=0;i<list.size();i++){ 
                                            if(list.get(i).getLogStatue()==1){%>
										  <dl class="am-accordion-item am-active" ">
										    <dt class="am-accordion-title"> <%=list.get(i).getLogTitle() %><span><img src="images/right2.png" style="float:right;"></span></dt>
										    <dd class="am-accordion-bd am-collapse">
										      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
										      <div class="am-accordion-content"><%=UserDaoManage.queryId(list.get(i).getLogId()).getUserName()%>
										        <br/><%=list.get(i).getLogBody() %>
										        <br/>退到人群后
										        <br />你只需给予双手 微笑 等候
										        <input type="hidden" name="UserLogoid" value="<%=list.get(i).getOid()%>">
										        <button type="submit" class="btn-danger" id="form_diary">已完成</button>    
										        </div>
										    </dd>
										  </dl>
										    <%} }%>
										</section>
						      </div>
						    </dd>
						  </dl>
						</section>
				  </div>
				  </form>
				   <form action="UpdateLogUserStstute" name="daiban" method="post">
				  <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;padding:0;">
				     <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
						data-am-accordion='{  }' style="margin:0;">
						  <dl class="am-accordion-item am-active" >
						    <dt class="am-accordion-title" style="font-size:1.2em;">待辦事宜<span><img src="images/down5.png" style="float:right;"></span></dt>
						    <dd class="am-accordion-bd am-collapse">
						      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
						      <div class="">
						            <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
										data-am-accordion='{  }'>
										<%for(int i=0;i<list.size();i++){ 
                                            if(list.get(i).getLogStatue()==2){%>
										  <dl class="am-accordion-item am-active" ">
										    <dt class="am-accordion-title"> <%=list.get(i).getLogTitle() %><span><img src="images/right2.png" style="float:right;"></span></dt>
										    <dd class="am-accordion-bd am-collapse">
										      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
										      <div class="am-accordion-content"><%=UserDaoManage.queryId(list.get(i).getLogId()).getUserName()%>
										        <br/><%=list.get(i).getLogBody() %>
										        <br/>退到人群后
										        <br />你只需给予双手 微笑 等候
										        <input type="hidden" name="UserLogoid" value="<%=list.get(i).getOid()%>">
										        <button type="submit" class="btn-danger" id="form_diary">接受</button>
										        </div>
										    </dd>
										  </dl>
										    <%} }%>
										</section>
						      </div>
						    </dd>
						  </dl>
						</section>
				  </div>
				  </form>
				 <div class="am-u-lg-3 am-u-md-6 am-u-sm-12" style="margin-top:1%;padding:0;">
				     <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
						data-am-accordion='{  }' style="margin:0;">
						  <dl class="am-accordion-item am-active" >
						    <dt class="am-accordion-title" style="font-size:1.2em;">完成事宜<span><img src="images/down5.png" style="float:right;"></span></dt>
						    <dd class="am-accordion-bd am-collapse">
						      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
						      <div class="">
						           <section data-am-widget="accordion" class="am-accordion am-accordion-gapped"
										data-am-accordion='{  }'>
										<%for(int i=0;i<list.size();i++){ 
                                            if(list.get(i).getLogStatue()==3){%>
										  <dl class="am-accordion-item am-active" ">
										    <dt class="am-accordion-title"> <%=list.get(i).getLogTitle() %><span><img src="images/right2.png" style="float:right;"></span></dt>
										    <dd class="am-accordion-bd am-collapse">
										      <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
										      <div class="am-accordion-content"><%=UserDaoManage.queryId(list.get(i).getLogId()).getUserName()%>
										        <br/><%=list.get(i).getLogBody() %>
										        <br/>退到人群后
										        <br />你只需给予双手 微笑 等候</div>
										    </dd>
										  </dl>
										    <%} }%>
										</section>
						      </div>
						    </dd>
						  </dl>
						  
						</section>
				  </div>
		          
		</div>
	  
 </body>
 </html>
