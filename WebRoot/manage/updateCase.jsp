<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>鲜橙服务</title>
<!--加载head和footer公用的css开始-->
<link charset="utf-8" type="text/css" href="${ctx}/css/common.css" rel="stylesheet"/>
<!--加载head和footer公用的css结束-->
<!--加载service页面的css开始-->
<link charset="utf-8" type="text/css" href="${ctx}/css/sample.css" rel="stylesheet"/>
<!--加载service页面的css结束-->
<!--加载公用的jquery的js开始-->
<script type="text/javascript" src="${ctx}/js/jquery-1.4.js"></script>
<!--加载公用的jquery的js结束-->
<!--网页扇面宽度碎浏览器变化开始-->
<script type="text/javascript">
	$(document).ready(function(){
		var width = document.body.offsetWidth ;
		var w = width+"px";
		document.getElementById("headerActiveBac").style.width = w;
		document.getElementById("mainActiveBac").style.width = w;
		document.getElementById("mainMaskBac").style.width = w;
		document.getElementById("footerMaskBac").style.width = w;
	});
</script>
<!--网页扇面宽度碎浏览器变化结束-->
<!--加载公用的jquery的js结束-->
<script type="text/javascript">
	$(document).ready(function(){
		var width = document.body.offsetWidth ;
		var w = width+"px";
		document.getElementById("headerActiveBac").style.width = w;
		document.getElementById("mainActiveBac").style.width = w;
		document.getElementById("mainMaskBac").style.width = w;
		document.getElementById("footerMaskBac").style.width = w;
	});
</script>
<style type="text/css"></style>
</head>
<!--页面内容开始-->
<body>
<div class="content">
  <!--页面头部开始-->
  <div class="header">
    <div id="header_logo"><img src="${ctx}/image/logo.png" alt="logo"/></div>
    <div id="header_nav">
      <ul>
       
        <li><a style="TEXT-DECORATION:none" class=headerlink href="goFindAllProducts.action">产品管理</a></li>
        <li><a style="TEXT-DECORATION:none"  href="goFindAllCases.action">案例管理</a></li>
        <li><a style="TEXT-DECORATION:none"  href="goFindAllModulePhotos.action">模块图片管理</a></li>
 		<li><a style="TEXT-DECORATION:none"  href="adminLogoutAction.action">退出</a></li>
      </ul>
    </div>
  </div>
  <!--页面头部结束-->
  <div class="clearfloat"></div>
  <!--页面中间开始-->
  <div class="main">
    <!--展示信息区 -->
    <div id="leftFrame" style="float:left;">
				<!-- 左侧菜单-->
				<div id="dlmenu">
					<ul id="menu">
					<li>
					<dl class="gallery">
						<dt><a href="informationAction.do?method=myAllBuyInfoList&userType=company">添加案例</a></dt>
						<dt><a href="addCompanyBuyInformation.jsp">修改案例</a></dt>
						<dt><a href="informationAction.do?method=myAllSupplyInfoList&userType=company">查询案例</a></dt>
						<dt><a href="addCompanyBuyInformation.jsp">删除案例</a></dt>
					</dl>
					</li>
					</ul>
				</div>
				</div>
				<div id="rightFrame" >
					
					<div id="itemDisplay">
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">添加新案例</font></center>
						<form name="registerForm" action="userAction.do?method=registerCompany" method="post">
							<table align="center">
								<tr>
									<td>案例标题：</td>
									<td><input type="text" name="title_create" /></td>
									<td><font color="red">*</font></td>
								</tr>
								<tr>
									<td>案例类型：</td>
									<td><s:radio name="type_create" list="%{#{'0':'广告设计','1':'企业礼品定制','2':'UI设计','3':'游戏研发'}}" value="1" theme="simple"></s:radio></td>
									<td><font color="red">*</font></td>
								</tr>
								<tr>
									<td>案例介绍</td>
									<td><textarea name="summary_create"></textarea></td>
								</tr>
								<tr>
									<td>案例大图片位置：</td>
									<td><s:file id="upload"  size="50" name="photo_create"></s:file></td>
								</tr>
								<tr>
									<td>案例logo位置：</td>
									<td><s:file id="upload"  size="50" name="photo_create"></s:file></td>
								</tr>
								
								<tr>
									<td colspan="2"><input type="submit" name="submit" value="注册"/>&nbsp;&nbsp;
										<input type="reset" name="reset" value="清空"/>
									</td>
								</tr>
							</table>
						</form>
					</div>
					
				</div>
  </div>
  <!--页面中间结束-->
  <div class="clearfloat"></div>
  <!--页面底部开始-->
  <div class="footer">
    <div id="footer_nav">
      <ul>
        <li><a>首页</a></li>
        <li><a>关于鲜橙</a></li>
        <li><a>鲜橙案例</a></li>
        <li><a>鲜橙服务</a></li>
        <li><a>鲜橙产品</a></li>
        <li><a>联系我们</a></li>
      </ul>
    </div>
  </div>
  <!--页面底部结束-->
</div>
<div id="footerMaskBac" style=" margin-top:-120px; position:absolute; height:120px; background:url(image/footerBac_ext.png) repeat; overflow:visible; z-index:-100;"></div>
<!--页面内容结束-->
</body>
</html>
