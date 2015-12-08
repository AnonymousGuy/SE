<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Complex Layout - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="style/workspace.css">
	<script type="text/javascript" src="jquery.min.js"></script>
	<script type="text/javascript" src="jquery.easyui.min.js"></script>
</head>

<body>

	<div class="menutitle ">
	<a href="#" class="easyui-menubutton" menu="#mm1" >导航</a>
	<a href="#" class="easyui-menubutton" menu="#mm2" >备注</a>
	<a href="#" class="easyui-menubutton" menu="#mm3" >管理</a>
	<a href="#" class="easyui-menubutton" menu="#mm4" >系统</a>
	<a href="#" class="easyui-menubutton" menu="#mm5" >帮助</a>
	</div>
<div class="menucontent" id="mm1" >
	<div iconCls="icon-home">首页</div>
	<div iconCls=>后退</div>
	<div iconCls=>前进</div>
</div>
<div class="menucontent" id="mm2">
	<div>编辑备注</div>
	<div>导出备注</div>
</div>
<div class="menucontent" id="mm3" >
	<div>用户管理</div>
	<div>角色维护</div>
	<div class="menu-sep"></div>
	<div>口令安全设置</div>
	<div>意见管理</div>
</div>
<div class="menucontent" id="mm4">
	<div>用户配置</div>
	<div>适用性</div>
	<div>界面配置</div>
	<div>打印</div>
	<div class="menu-sep"></div>
	<div>注销</div>
	<div>关闭</div>
</div>
<div class="menucontent" id="mm5">
	<div>帮助</div>
	<div>关于</div>
</div>
	<div class="tool">
	<img src="themes/icons/NavPane.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="显示/隐藏" />
	<img src="themes/icons/Home.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="首页" />
	<img src="themes/icons/Back.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="后退" />
	<img src="themes/icons/Next.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="前进" />
	<img src="themes/icons/MultimediaViewer.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="多媒体" />
	<img src="themes/icons/Remark.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="备注" />
	<img src="themes/icons/ExportRemark.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="导出备注" />
	<img src="themes/icons/AddComments.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="添加意见" />
	<img src="themes/icons/Comments.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="查看意见" />
	<img src="themes/icons/ExportDM.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="导出DM文件" />
	<img src="themes/icons/print.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="打印" />
	<img src="themes/icons/Applic.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="适用性" />
	<img src="themes/icons/PlanReport.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="维护任务" />
	<img src="themes/icons/Lock.png" class="tools easyui-linkbutton easyui-tooltip" data-options="plain:true" title="锁定" />
	</div>
	<div class="main easyui-layout">
		<div class="leftpart" data-options="region:'west',split:true" title="导航">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="导航树" style="padding:10px;">
					<form method="post" action="/Publisher/content.jsp" name="ContentForm" id="ContentForm" target="read-content">
						<ul class="easyui-tree" id="tt" url="test.json" >
						</ul>
						<input type="hidden" name="dmc" id="dmc" value="">
					</form>
				</div>
				<div title="书签" style="padding:10px;">
					content2
				</div>
				<div title="访问记录" style="padding:10px">
					content3
				</div>
				<div title="组合查询" style="padding:10px">
					content3
				</div>
			</div>
		</div>
		<div data-options="region:'center'">
			<div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
				<div title="首页" style="padding:10px">
					<iframe name="read-content" id="read-content" src="content.jsp">
				    </iframe>
				</div>
				<div title="全文搜索" style="padding:5px">
					<div id="tb" style="padding:3px">
							<span>搜索内容</span>
							<form method="post" id="SearchForm" action="/Publisher/ftsearch" target="search-result">
							<input id="search-content" id="key" name="key">
							<img id="search-button" class="easyui-linkbutton" plain="true" onclick="doSearch()" src="themes/icons/search.png" />
							</form>
						<iframe name="search-result" id="search-result">
						</iframe>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	//var xmlhttp;
	function doSearch(){
		document.getElementById("SearchForm").submit();
	}
	</script>
	
	<script> 
	$('#tt').tree({
    onClick: function(node){
    	var v = node.id;
       	document.getElementById("dmc").value=v;
       	//alert(document.getElementById("dmc").value);
       	document.getElementById("ContentForm").submit();
    }
	});
	</script>
</body>
</html>