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
				if(form.name.value == "")
				{
					alert("产品标题不能为空！");
					form.name.focus();
					return false;
				}		
				if(form.summary.value == "")
				{
					alert("产品简介不能为空！");
					form.summary.focus();
					return false;
				}
				if(form.name.value.length >= 50)
				{
					alert("名称长度不能超过50！");
					form.name.focus();
					return false;
				}	
				if(form.sort.value == "")
				{
					alert("产品类型不能为空！");
					form.sort.focus();
					return false;
				}
				if(form.version.value == "")
				{
					alert("产品版本不能为空！");
					form.version.focus();
					return false;
				}
				if(form.size.value == "")
				{
					alert("产品大小不能为空！");
					form.size.focus();
					return false;
				}
				if(form.language.value == "")
				{
					alert("产品语言不能为空！");
					form.language.focus();
					return false;
				}
				if(form.company.value == "")
				{
					alert("产品开发商不能为空！");
					form.company.focus();
					return false;
				}
				if(form.requirements.value == "")
				{
					alert("产品系统需求不能为空！");
					form.requirements.focus();
					return false;
				}
				if(form.adaption.value == "")
				{
					alert("产品适用性不能为空！");
					form.adaption.focus();
					return false;
				}
				if(form.weight.value == "")
				{
					alert("产品权重不能为空");
					form.title_create.focus();
					return false;
				}	
				if(form.weight.value>10||form.weight.value<0)
				{
					alert("请按规则输入权重！");
					form.title_create.focus();
					return false;
				}
				if(form.thumbnail.value == "")
				{
					alert("上传缩略图不能为空！");
					return false;
				}
				form.submit.disabled = true;
			}
		</SCRIPT>
<script type="text/javascript">
		var jj=0;
		<!--动态增加上传附件-->
		function addFile11(){
		document.getElementById("conditionTable").style.display="block";
	 currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= "<input size=50 id='upload' type='File' NAME='fileList'>&nbsp;&nbsp;<button onclick='removeFile();'>删除</button><br>";
     cellc.innerHTML=cellcContext;
     
     //alert(cellcContext);
	    
	}
	<!--在表的td中增加-->
	function findTD(o){
if (o.nodeName=="TR"||o.nodeName=="TABLE") return;
if(o.nodeName=="TD")
return (o);
else
return (o.parentElement);
}

<!--删除一个附件-->
function removeFile(){
  o = findTD(event.srcElement);
  //alert(o.parentElement.rowIndex*1);
conditionTable.deleteRow(o.parentElement.rowIndex*1);


}
</script>
 <s:head theme="simple"/>
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
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">添加产品</font></center>
<br />
<br />
			<s:form action="addProductAction" method="post"
			enctype="multipart/form-data"  onsubmit="return check(this);">
			<table align="center">
				<tr>
					<td>
						<div align="center">
							产品名称
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
					<s:textfield id="name" size="50" name="product.name"/>
					</td>
<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>
						<div align="center">
							产品简介
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textarea id="summary" cols="39" rows="5" name="product.summary"></s:textarea>
						<!--<s:textfield id="title" size="50" name="courseware.title" cssClass="input" />-->
					</td>
<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>
						<div align="center">
							类型
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="sort"  size="50" name="product.sort" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							版本
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="version"  size="50" name="product.version" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							大小(M)
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="size"  size="50" name="product.size" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							语言
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="language"  size="50" name="product.language" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							开发商
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="company"  size="50" name="product.company" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							系统需求
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="requirements" size="50" name="product.requirements" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							适用性
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="adaption"  size="50" name="product.adaption" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							发布时间
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:datetimepicker id="publishDate" name="product.publishDate" value="today" label="时间选择器"></s:datetimepicker>
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							产品权重
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="weight"  size="50" name="product.weight" />
					</td>
<td><font color="red">*</font></td>
				</tr>
<tr>
					<td>
						<div align="center">
							iTunes链接
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="itunesLink"  size="50" name="product.itunesLink" />
					</td>
<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>
						<div align="center">
							上传缩略图：
						</div>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<s:file id="upload"  size="50" name="thumbnail"></s:file>
					</td>
				</tr>
<tr>
					<td>
						<div align="center">
							上传图片：
						</div>
					</td>
					<td>
						<table id=conditionTable border=0  style="display: none">
						</table>
						<a href="javascript:addFile11();">添加附件</a>
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
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
