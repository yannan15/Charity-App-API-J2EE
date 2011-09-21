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
				form.submit.disabled = true;
			}
		</SCRIPT>
<script type="text/javascript">
function cancelFile(){
document.forms["productForm"].reset();
document.getElementById("attachmentDiv").style.display="block";
document.getElementById("conditionTable").style.display="none";
		 document.getElementById("continue").style.display="none";		
		 document.getElementById("cancel").style.display="none";
		 document.getElementById("replay").style.display="block";
var t=doucument.getElementById(conditionTable); 
  t.parent.remove(t); 
}
		var jj=0;
		<!--动态增加上传附件-->
		function readdFile1(){
		 document.getElementById("replay").style.display="none";
		 document.getElementById("attachmentDiv").style.display="none";
		 document.getElementById("conditionTable").style.display="block";
		 document.getElementById("continue").style.display="block";		
		 document.getElementById("cancel").style.display="block";		 
	 currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= "<input type='File' NAME='fileList'>&nbsp;&nbsp;<button onclick='removeFile();'>删除</button><br>";
     cellc.innerHTML=cellcContext;
     
     //alert(cellcContext);
	    
	}
	function addFile11(){
	 currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= "<input type='File' NAME='fileList'>&nbsp;&nbsp;<button onclick='removeFile();'>删除</button><br>";
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
						<center><font style="font-size:16px; color:#006A6A; font-weight:bolder;">编辑产品</font></center>
<br />
<br />
			<s:form id="productForm" action="editProductAction" method="post"
			enctype="multipart/form-data" onsubmit="return check(this);">
			<s:hidden name="product.id"></s:hidden>
			<table cellSpacing=1 cellPadding=0 width="100%"
				align=center border=0>
				<tr>
					<td colSpan=7>
						编辑产品
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							产品名称
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
					<s:textfield id="name" size="50" name="product.name"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							产品简介
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textarea id="summary" cols="39" rows="5" name="product.summary"></s:textarea>
						<!--<s:textfield id="title" size="50" name="courseware.title" cssClass="input" />-->
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							类型
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="sort"  size="50" name="product.sort" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							版本
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="version"  size="50" name="product.version" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							大小(M)
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="size"  size="50" name="product.size" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							语言
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="language"  size="50" name="product.language" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							开发商
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="company"  size="50" name="product.company" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							系统需求
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="requirements"  size="50" name="product.requirements" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							适用性
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="adaption"  size="50" name="product.adaption" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							发布时间
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:datetimepicker id="publishDate" name="product.publishDate" label="时间选择器"></s:datetimepicker>
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							产品权重
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="weight"  size="50" name="product.weight" />
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							iTunes链接
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:textfield id="itunesLink"  size="50" name="product.itunesLink" />
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
							上传缩略图
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<s:file id="file" name="thumbnail"></s:file>
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							查看原产品缩略图
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;
						<a
							href="<s:url action="download"> 
                     			<s:param name="fileName"> 
                       			 	<s:property value="product.filelink"/> 
                    			</s:param> 
								<s:param name="originalFileName"> 
                       			 	<s:property value="product.thumbnail"/> 
                    			</s:param> 
                					</s:url>">
							<font color="red"><s:property
									value="product.thumbnail" /> </font> </a>
					</td>
				</tr>
<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							产品截图：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<div id=attachmentDiv>
							<s:iterator value="photoList" status="photo">
								<a href="<s:url action="download"> 
                     			<s:param name="fileName"> 
                       			 	<s:property value="filelink"/> 
                    			</s:param> 
								<s:param name="originalFileName"> 
                       			 	<s:property value="filename"/> 
                    			</s:param> 
                					</s:url>">
									<font color="blue"><s:property value="filename" /> </font> </a>
							</s:iterator>
						</div>
						<table id=conditionTable border=0>
						</table>
						<a href="javascript:readdFile1();" id="replay">重新上传</a>
						<a href="javascript:addFile11();" id="continue"
							style="display: none">继续上传</a>
						<a href="javascript:cancelFile();" id="cancel"
							style="display: none">
							取消上传</a>
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
