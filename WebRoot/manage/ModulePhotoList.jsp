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
		<SCRIPT language=javascript>		
			function goToAddModulePhoto(){
			 window.location.href="${ctx}/manage/createModulePhoto.jsp";
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
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">模块图片列表</font></center>

		<table cellSpacing=1 cellPadding=0 width="100%"
			align=center border=0>
			<tr>
				<td width="40">
					<div align="left">
						<input type="button" onclick="goToAddModulePhoto()" value="添加模块图片" />
					</div>
				</td>
	</tr>
	
	<tr>
<td >按类型查找：</td>
<td width="80">
					<div align="left">
						<a style="TEXT-DECORATION:none" href="goFindAllModulePhotos.action">
								所有条目</a>
					</div>
				</td>
				<td width="80">
					<div align="left">
						<a style="TEXT-DECORATION:none" href="<s:url action="findModuleByTypeAction"> 
                     			<s:param name="type_select">0</s:param> 
                					</s:url>">
								首页</a>
					</div>
				
				</td><td width="80">
					<div align="left">
						<a style="TEXT-DECORATION:none" href="<s:url action="findModuleByTypeAction"> 
                     			<s:param name="type_select">1</s:param> 
                					</s:url>">
								鲜橙案例</a>
					</div>
				
				</td><td width="80">
					<div align="left">
						<a style="TEXT-DECORATION:none" href="<s:url action="findModuleByTypeAction"> 
                     			<s:param name="type_select">2</s:param> 
                					</s:url>">
								鲜橙产品</a>
					</div>
				</td>
			</tr>
		</table>
<br />
			<table id="table" align="center">
				<tr>			
					<th width="150">
						模块类别
					</th>
					<th width="150">
						模块描述
					</th>
					<th width="100">
						权重
					</th>
					<th width="250">
						操作
					</th>	
				</tr>
				<s:iterator value="modulePhotoList" status="modulephoto">
					<tr>
						<td width="150" align="center">
							<s:property value="type" />
						</td>					
						<td width="150" align="center">
							<s:property value="description" />
						</td>
						<td width="100" align="center">
							<s:property value="weight" />
						</td>
						<td width="250" align="center">
							<a
								href="<s:url action="goEditModuleAction"> 
                     			<s:param name="modulePhotoId"> 
                       			 	<s:property value="id"/> 
                    			</s:param> 
                					</s:url>">
								<font color="green">【编辑】</font> </a>
							<a
								href="<s:url action="deleteModulePhotoAction"> 
                     			<s:param name="modulePhotoId"> 
                       			 	<s:property value="id"/> 
                    			</s:param> 
                					</s:url>"
								onclick="JAVAscript:if(!confirm('确认删除？')) return false;return true;">
								<font color="red">【删除】</font> </a>
						</td>
					</tr>
				</s:iterator>
				</tbody>
			</table>
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
