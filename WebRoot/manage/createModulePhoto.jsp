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
<SCRIPT language=javascript>
			function check(form)
			{		
				if(form.type.value != "")
				{
					alert("请选择模块类型！");
					return false;
				}	
				if(form.desc.value != "")
				{
					alert("Banner图片描述不能为空！");
					form.desc.focus();
					return false;
				}
				if(form.weight.value == "")
				{
					alert("模块图片权重不能为空");
					form.title_create.focus();
					return false;
				}	
				if(form.weight.value>10||form.weight.value<0)
				{
					alert("请按规则输入权重！");
					form.title_create.focus();
					return false;
				}
				if(form.file.value != "")
				{
					alert("请上传Banner图片！");
					return false;
				}
				if(form.sidefile.value != "")
				{
					alert("请上传侧边图片！");
					return false;
				}
				form.submit.disabled = true;
			}
		</SCRIPT>
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
				<div>
					<div id="itemDisplay">
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">添加模块图片</font></center>
<br />
<br />
<s:form action="addModulePhotoAction" method="post"
			enctype="multipart/form-data"  onsubmit="return check(this);">
		
			<table align="center">			
				<tr>
					<td>
						<div align="center">
							模块类型
						</div>
					</td>
					<td >
						&nbsp;&nbsp;&nbsp;
						<s:radio id="type" name="modulephoto.type" list="%{#{'首页':'首页','鲜橙案例':'鲜橙案例','鲜橙产品':'鲜橙产品'}}" value="'首页'" theme="simple"></s:radio>
					</td>
<td><font color="red">*</font></td>
				</tr><!--
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							是否是缩略图
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:radio id="radio" name="modulephoto.isthumbnail" list="%{#{'0':'是','1':'否'}}" value="0" theme="simple"></s:radio>
					</td>
				</tr>
				--><tr>
					<td>
						<div align="center">
							描述
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textarea id="desc" cols="39" rows="5" value="请输入描述..." name="modulephoto.description" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							权重
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="weight" size="50" name="modulephoto.weight"/>
					</td>
					<td><font color="red">*输入范围(0.0~10.0)</font></td>
				</tr>
				<tr>
					<td>
						<div align="center">
							上传Banner图片(必填项)
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:file id="upload"  size="50"  name="file"></s:file>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							上传侧边图片(必填项)
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:file id="upload"  size="50"  name="sidefile"></s:file>
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;&nbsp;&nbsp;
					</td>
					<td>
						<s:submit id="submit" value="确认" />
						<s:reset value="取消" />
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
