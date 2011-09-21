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
		<SCRIPT language=javascript>
			function check(form)
			{	
				if(form.title.value == "")
				{
					alert("案例标题不能为空！");
					form.title.focus();
					return false;
				}	
				if(form.weight.value == "")
				{
					alert("案例权重不能为空");
					form.title.focus();
					return false;
				}	
				if(form.weight.value>10||form.weight.value<0)
				{
					alert("请按规则输入权重！");
					form.title_create.focus();
					return false;
				}
				if(form.type.value <0||form.type.value>3)
				{
					alert("请选择案例类型！");
					return false;
				}
				if(form.title.value.length >= 50)
				{
					alert("案例标题长度不能超过50！");
					form.title_create.focus();
					return false;
				}	
				if(form.summary.value == "")
				{
					alert("案例介绍不能为空！");
					form.summary_create.focus();
					return false;
				}
				if(form.file.value == "")
				{
					alert("请上传大图片！");
					return false;
				}
				if(form.thumbfile.value == "")
				{
					alert("请上传LOGO图片！");
					return false;
				}
				form.submit.disabled = true;
			}
		</SCRIPT>
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
<body>
<!--页面内容开始-->
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

				<div id="rightFrame" >
					
					<div id="itemDisplay">
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">添加新案例</font></center>
						<s:form action="addCase" method="post" enctype="multipart/form-data" onsubmit="return check(this);">
<table align="center">
								<tr>
									<td>案例标题：</td>
									<td><s:textfield id="title"  size="50" name="myCase.title" /></td>
									<td><font color="red">*</font></td>
								</tr>
								<tr>
									<td>案例权重：</td>
									<td><s:textfield id="weight"  size="50" name="myCase.weight" /></td>
									<td><font color="red">*输入范围(0.0~10.0)</font></td>
								</tr>
								<tr>
									<td>案例类型：</td>
									<td><s:radio id="type" name="myCase.type" list="%{#{'广告设计':'广告设计','企业礼品定制':'企业礼品定制','UI设计':'UI设计','游戏研发':'游戏研发','鲜橙动漫':'鲜橙动漫'}}" value="'广告设计'" theme="simple"></s:radio></td>

									<td><font color="red">*</font></td>
								</tr>
								<tr>
									<td>案例介绍</td>
									<td><textarea  id="summary"  cols="38" rows="5" name="myCase.summary"></textarea></td>
								</tr>
								<tr>
									<td>案例logo位置：</td>
									<td><s:file id="upload2"  size="50" name="thumbfile"></s:file></td>
								</tr>
								<tr>
									<td>案例大图片位置：</td>
									<td><s:file id="upload"  size="50" name="file"></s:file></td>
								</tr>
																
								<tr>
									<td colspan="2"><input type="submit" name="submit" value="确定"/>&nbsp;&nbsp;
										<input type="reset" name="reset" value="清空"/>
									</td>
								</tr>
							</table>
						</s:form>
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
