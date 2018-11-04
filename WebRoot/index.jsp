<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"/>

	<script type="text/javascript">
		$(function(){
			$("#aaa").datagrid({
			width:750,
			title:"HPV",
			columns:[[
					{title:"id",field:"id",width:70,sortable:true},
					{title:"HPV06",field:"hpv06",width:100,sortable:true},
					{title:"HPV11",field:"hpv11",width:100,sortable:true},
					{title:"HPV16",field:"hpv16",width:100,sortable:true},
					{title:"HPV18",field:"hpv18",width:100,sortable:true},
					{title:"HPV26",field:"hpv26",width:100,sortable:true},
					{title:"HPV31",field:"hpv31",width:100,sortable:true},
					{title:"HPV33",field:"hpv33",width:100,sortable:true},
					{title:"HPV35",field:"hpv35",width:100,sortable:true},
					{title:"HPV39",field:"hpv39",width:100,sortable:true},
					{title:"HPV40",field:"hpv40",width:100,sortable:true},
					{title:"HPV42",field:"hpv42",width:100,sortable:true},
					{title:"HPV43",field:"hpv43",width:100,sortable:true},
					{title:"HPV44",field:"hpv44",width:100,sortable:true},
					{title:"HPV45",field:"hpv45",width:100,sortable:true},
					{title:"HPV51",field:"hpv51",width:100,sortable:true},
					{title:"HPV52",field:"hpv52",width:100,sortable:true},
					{title:"HPV53",field:"hpv53",width:100,sortable:true},
					{title:"HPV55",field:"hpv55",width:100,sortable:true},
					{title:"HPV56",field:"hpv56",width:100,sortable:true},
					{title:"HPV58",field:"hpv58",width:100,sortable:true},
					{title:"HPV59",field:"hpv59",width:100,sortable:true},
					{title:"HPV61",field:"hpv61",width:100,sortable:true},
					{title:"HPV66",field:"hpv66",width:100,sortable:true},
					{title:"HPV68",field:"hpv68",width:100,sortable:true},
					{title:"HPV81",field:"hpv81",width:100,sortable:true},
					{title:"HPV82",field:"hpv82",width:100,sortable:true},
					{title:"HPV83",field:"hpv83",width:100,sortable:true},
					{title:"Totale",field:"totale",width:100,sortable:true},
					{title:"Createtime",field:"createtime",width:100,sortable:true},
					{title:"LXNumber",field:"lxnumber",width:100},
				    ]],
          url:"bbb",
          singleSelect:true,
          /* 分页属性*/
          pagination:true,
          pagination:"bottom",
          pageSize:3,
          pageList:[3,6,9,12,15,18,21,23],
          /* 服务器端排序*/
          sortName:"totale",
          sortOrder:"desc",
          remoteSort:false,
          /* datagrid按钮处理*/
          toolbar:"#btns",
          /* 初始化时候的扼腕参数*/
          queryParams:{
           mode:0
          }
         });
         });
		 
	</script>

  </head> 
  
  <body>
  	<div id="father" style="width:750px;margin:0px auto">
       <table id="aaa"></table>
    </div>
  		
  </body>
</html>
