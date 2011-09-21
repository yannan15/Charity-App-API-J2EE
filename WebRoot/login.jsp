<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="./common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Charity</title>

		<link charset="utf-8" type="text/css" href="css/common.css"
			rel="stylesheet" />

		<link charset="utf-8" type="text/css" href="css/index.css"
			rel="stylesheet" />

		<script type="text/javascript" src="js/jquery-1.4.js"></script>

		<script type="text/javascript">
	$(document).ready( function() {
		var width = document.body.offsetWidth;
		var w = width + "px";
		document.getElementById("headerActiveBac").style.width = w;
		document.getElementById("mainActiveBac1").style.width = w;
		document.getElementById("mainActiveBac1").style.height = "100%";
		document.getElementById("footerMaskBac").style.width = w;
		var mainRightExt = (document.body.offsetWidth - 960) / 2 + 238;
		mainExtRight = mainRightExt + "px";
	
		document.getElementById("headerShadowBac").style.width = w;
	});

	window.onresize = function() {
		var width = document.documentElement.clientWidth;
		var w = width + "px";
		var w = width + "px";
		document.getElementById("headerActiveBac").style.width = w;
		document.getElementById("mainActiveBac1").style.width = w;
		document.getElementById("mainActiveBac1").style.height = "100%";
		document.getElementById("footerMaskBac").style.width = w;
		var mainRightExt = (document.body.offsetWidth - 960) / 2 + 238;
		mainExtRight = mainRightExt + "px";
	
		document.getElementById("headerShadowBac").style.width = w;
	}
</script>
		<!--网页界面宽度随浏览器变化结束-->
		<!--网页界面展示部分开始-->

		<style type="text/css"></style>
	</head>
	<body>
		<!--页面内容开始-->
		<div id="headerActiveBac"
			style="position: absolute; height: 100px; background: url(image/headbac.png) repeat; overflow: visible; z-index: -100;"></div>
		 <div id="headerShadowBac" style="position:absolute; height:100%; background:url(image/shadow.png) repeat-x scroll left top transparent; z-index:100;overflow:visible;margin-top:100px;"></div>
		<div id="extPic1" class="picCurrent"
			style="display: block; margin-top: 100px; position: absolute; height: 398px; overflow: visible; z-index: -100;">
			<img id="mainActiveBac1" src="image/mainBac.png" />
		</div>
		<div id="headerShadowBac"
			style="position: absolute; height: 6px; background: url(image/shadow.png) repeat-x scroll left top transparent; overflow: visible; margin-top: 100px; z-index: 100;"></div>
		<div class="clearfloat"></div>
		<div class="content">
			<!--页面头部开始-->
			<div class="header">
				<div id="header_logo">
					<a href="login.jsp"><img style="border: none;"
							src="image/logo.png" alt="logo" />
					</a>
				</div>
				<div id="header_nav">
					<ul>
						<li>
							<a style="color: #ea5404;" href="">Login</a>
						</li>
						<li>
							<a href="">Register</a>
						</li>
						<li>
							<a href="">About</a>
						</li>
						<li>
							<a href="p">Contact</a>
						</li>
						<li>
							<a href="">Sitemap</a>
						</li>
					</ul>
				</div>
			</div>
			<!--页面头部结束-->
			<div class="clearfloat"></div>
			<!--页面中间开始-->
			<div class="main">
				<!--页面中间导航开始-->
				<s:form action="LoginAction" cssStyle="margin:0 auto; padding:0px;" />


				
					
					<div class="clearfloat"></div>
					<!--展示信息区 -->
					<div>
						<div id="itemDisplay" style="padding-top: 10px">
							<center>
								<font	style="font-size: 16px; color: #006A6A; font-weight: bolder;">User Login</font>
							</center>
							<s:form action="LoginAction" method="post">
								<table width="250" border="0" align="center" cellpadding="2"
									cellspacing="0">
									<tr>
										<td height="30" colspan="2" align="left">
											<s:actionerror />
										</td>
									</tr>
									<tr>
										<td width="90" height="30">
											<strong><font size="2" color="gray">Username</font>
											</strong>
										</td>
										<td>
											<s:textfield id="username" size="20" name="username" />
										</td>
									</tr>
									<tr>
										<td height="30" width="90">
											<strong><font size="2" color="gray">Password</font>
											</strong>
										</td>
										<td>
											<s:password id="password" size="20" name="password" />
										</td>
									</tr>
									<tr>
										<td width="90">
											&nbsp;
										</td>
										<td>
											<s:submit id="submit" value="Login" />
											<s:reset value="Reset" />
										</td>
									</tr>
									<tr>
										<td height="5" colspan="2"></td>
									</tr>

								</table>
							</s:form>
						</div>

					
				</div>
			</div>

			<div class="clearfloat"></div>

			<!--页面中间内容结束-->
		</div>
		<!--页面中间结束-->
		<div class="clearfloat"></div>
		<!--页面底部开始-->
		<div class="footer">
			<div id="footer_nav">
				<ul>
					<li>
						<a href="">Login</a>
					</li>
					<li>
						<a href="">Register</a>
					</li>
					<li>
						<a href="">About</a>
					</li>
					<li>
						<a href="">Contact</a>
					</li>
					<li>
						<a href="">Sitemap</a>
					</li>

				</ul>
				<div style="margin-left: 80px; margin-top: 37px;">
					<span style="font-size: 12px; color: #696969; font-weight: bold;">
						© 2011 Charity All rights reserved.</span>
				</div>
			</div>
		</div>
		<!--页面底部结束-->

		<div id="footerMaskBac"
			style="margin-top: -120px; position: absolute; height: 120px; background: url(image/footerBac_ext.png) repeat; overflow: visible; z-index: -100;"></div>
		<!--页面内容结束-->

	</body>
</html>
