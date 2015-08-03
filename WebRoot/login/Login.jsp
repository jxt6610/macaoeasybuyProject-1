<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar" style="color:#ff0a4f;">
				<div class=" navbar-inner">
					<div class="container-fluid">
						 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar collapsed"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand"><span style="">宜買小鋪</span><br />Macao easyBuy Shop</a>
						<div class="nav-collapse navbar-responsive-collapse collapse">
							<ul class="nav">
								<li class="active">
									<a href="#">首页</a>
								</li>
								<li>
									<a href="#">宜買通知</a>
								</li>
								<li>
									<a href="#">商品管理</a>
								</li>
								<li>
									<a href="#">訂單管理</a>
								</li>
								<li>
									<a href="#">供應商管理</a>
								</li>
								<li>
									<a href="#">廣告管理</a>
								</li>
								<li>
									<a href="#">推廣利器</a>
								</li>
								<li>
									<a href="#">銷售統計</a>
								</li>
								<li>
									<a href="#">商品搜索</a>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				
			</div>
			<form class="form-search">
				<input class="input-medium search-query" type="text" /> <button type="submit" class="btn">查找</button>
			</form>
		</div>
	</div>
	
	
	<div class="row-fluid">
		<div class="span3">
		</div>
		<div class="span3">
		</div>
		<div class="span3">
		</div>
		<div class="span3">
		</div>
	</div>
	<div class="row-fluid">
		<div class="span3">
		</div>
		<div class="span3">
		</div>
		<div class="span3">
		</div>
		<div class="span3">
		</div>
	</div>
	<div class="row-fluid">
		<div class="span3">
		</div>
		<div class="span3">
		</div>
		<div class="span3">
		</div>
		<div class="span3">
		</div>
	</div>
	<div class="row-fluid">
		<div class="span3">
			<div class="row-fluid">
				<div class="span12">
					<div class="btn-group">
						 <button class="btn">Action</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li>
								<a href="#">操作</a>
							</li>
							<li>
								<a href="#">设置栏目</a>
							</li>
							<li>
								<a href="#">更多设置</a>
							</li>
							<li class="divider">
							</li>
							<li class="dropdown-submenu">
								 <a tabindex="-1" href="#">更多选项</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">操作</a>
									</li>
									<li>
										<a href="#">设置栏目</a>
									</li>
									<li>
										<a href="#">更多设置</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="span3">
			<div class="row-fluid">
				<div class="span12">
					<div class="btn-group">
						 <button class="btn">Action</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li>
								<a href="#">操作</a>
							</li>
							<li>
								<a href="#">设置栏目</a>
							</li>
							<li>
								<a href="#">更多设置</a>
							</li>
							<li class="divider">
							</li>
							<li class="dropdown-submenu">
								 <a tabindex="-1" href="#">更多选项</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">操作</a>
									</li>
									<li>
										<a href="#">设置栏目</a>
									</li>
									<li>
										<a href="#">更多设置</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="span3">
			<div class="row-fluid">
				<div class="span12">
					<div class="btn-group">
						 <button class="btn">Action</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li>
								<a href="#">操作</a>
							</li>
							<li>
								<a href="#">设置栏目</a>
							</li>
							<li>
								<a href="#">更多设置</a>
							</li>
							<li class="divider">
							</li>
							<li class="dropdown-submenu">
								 <a tabindex="-1" href="#">更多选项</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">操作</a>
									</li>
									<li>
										<a href="#">设置栏目</a>
									</li>
									<li>
										<a href="#">更多设置</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="span3">
			<div class="row-fluid">
				<div class="span12">
					<div class="btn-group">
						 <button class="btn">Action</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li>
								<a href="#">操作</a>
							</li>
							<li>
								<a href="#">设置栏目</a>
							</li>
							<li>
								<a href="#">更多设置</a>
							</li>
							<li class="divider">
							</li>
							<li class="dropdown-submenu">
								 <a tabindex="-1" href="#">更多选项</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">操作</a>
									</li>
									<li>
										<a href="#">设置栏目</a>
									</li>
									<li>
										<a href="#">更多设置</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span4">
						</div>
						<div class="span8">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12">
		  <img src="images/">
		</div>
	</div>
</div>
  </body>
</html>
