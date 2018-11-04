<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>管理后台</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="assets/css/layui.css">
    <link rel="stylesheet" href="assets/css/view.css"/>
    <link rel="icon" href="/favicon.ico">
    <title>管理后台</title>
</head>
<body class="layui-view-body">
    <div class="layui-content">
        <div class="layui-page-header">
            <div class="pagewrap">
                <span class="layui-breadcrumb">
                  <a href="">首页</a>
                  <a href="">用户</a>
                  <a><cite>用户组</cite></a>
                </span>
                <h2 class="title">用户组</h2>
            </div>
        </div>
        <div class="layui-row">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="form-box">
                        <div class="layui-form layui-form-item">
                            <div class="layui-inline">
                                <div class="layui-form-mid">用户名:</div>
                                <div class="layui-input-inline" style="width: 100px;">
                                  <input type="text" autocomplete="off" class="layui-input">
                                </div>
                                <button class="layui-btn layui-btn-blue">查询</button>
                                
                            </div>
                        </div>
                        <table id="demo"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/layui.all.js"></script>
    <script>
      var element = layui.element;
	  var table = layui.table;
	  var form = layui.form;
  
  //展示已知数据
  table.render({
    elem: '#demo'
    ,url:'showAll'
    ,cols: [[ //标题栏
       {field: 'id', title: 'ID', width: 80, sort: true}
      ,{field: 'username', title: '用户名', width: 120}
      ,{field: 'email', title: '邮箱', minWidth: 150}
      ,{field: 'sign', title: '签名', minWidth: 160}
      ,{field: 'sex', title: '性别', width: 80}
      ,{field: 'city', title: '城市', width: 100}
      ,{field: 'experience', title: '积分', width: 80, sort: true}
    ]]
    
    ,skin: 'line' //表格风格
    ,even: true
    ,page: true //是否显示分页
    ,limits: [5, 7, 10]
    ,limit: 5 //每页默认显示的数量
  });
    </script>
</body>
</html>