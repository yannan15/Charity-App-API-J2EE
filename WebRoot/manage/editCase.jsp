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
		document.getElementById("footerMaskBac").style.width = w;
	});
</script>
<SCRIPT language=javascript>
			function check(form)
			{	
				if(form.title.value == "")
				{
					alert("案例标题不能为空！");
					form.title.focus();
					return false;
				}		
				if(form.type.value =="")
				{
					alert("请选择案例类型！");
					form.type.focus();
					return false;
				}
				if(form.title.value.length >= 50)
				{
					alert("案例标题长度不能超过50！");
					form.title.focus();
					return false;
				}	
				if(form.summary.value == "")
				{
					alert("案例介绍不能为空！");
					form.summary.focus();
					return false;
				}
				form.submit.disabled = true;
			}
		</SCRIPT>
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
				<div>
					<div id="itemDisplay">
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">编辑案例</font></center>
<br />
<br />
			<s:form action="editCase" method="post" enctype="multipart/form-data" onsubmit="return check(this);">
			<s:hidden name="myCase.id"></s:hidden>
			<table cellSpacing=1 cellPadding=0 
				align=center border=0 width=100%>

				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							案例标题
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
					<s:textfield id="title" size="50" name="myCase.title"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							案例权重 (0.0~10.0)
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
					<s:textfield id="weight"  size="50" name="myCase.weight" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							案例类型
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:radio id="type" name="myCase.type" list="%{#{'广告设计':'广告设计','企业礼品定制':'企业礼品定制','UI设计':'UI设计','游戏研发':'游戏研发','鲜橙动漫':'鲜橙动漫'}}"  theme="simple"></s:radio>
						<!--<s:textfield id="title" size="50" name="courseware.title" cssClass="input" />-->
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							案例简介
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
					<s:textarea cols="39" rows="5" id="summary"  name="myCase.summary"/>
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							图片管理：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<!--<s:file id="upload" name="thumbnail"></s:file>
					--></td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							上传Logo：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:file id="file" size="50" name="thumbfile"></s:file>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							查看原logo：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<a
							href="<s:url action="download"> 
                     			<s:param name="fileName"> 
                       			 	<s:property value="myCase.thumbnail"/> 
                    			</s:param> 
								<s:param name="originalFileName"> 
                       			 	<s:property value="myCase.thumblink"/> 
                    			</s:param> 
                					</s:url>">
							<font color="red"><s:property
									value="myCase.thumbnail" /> </font> </a>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							上传案例图片：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:file id="file" size="50" name="file"></s:file>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							查看原来图片：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<a
							href="<s:url action="download"> 
                     			<s:param name="fileName"> 
                       			 	<s:property value="myCase.photolink"/> 
                    			</s:param> 
								<s:param name="originalFileName"> 
                       			 	<s:property value="myCase.photo"/> 
                    			</s:param> 
                					</s:url>">
							<font color="red"><s:property
									value="myCase.photo" /> </font> </a>
					</td>
				</tr>
				
				<tr>
	<td width="30%">
						&nbsp;
					</td>
					<td width="70%">
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
